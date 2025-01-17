/*
 * Copyright (C) 2008-2015 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef _TICKETMGR_H
#define _TICKETMGR_H

#include <string>

#include "ObjectMgr.h"
#include "SharedDefines.h"

class ChatHandler;
class QueryResult;

// from blizzard lua
enum GMTicketSystemStatus
{
    GMTICKET_QUEUE_STATUS_DISABLED = 0,
    GMTICKET_QUEUE_STATUS_ENABLED  = 1
};

enum GMTicketStatus
{
    GMTICKET_STATUS_HASTEXT                      = 0x06,
    GMTICKET_STATUS_DEFAULT                      = 0x0A
};

enum GMTicketResponse
{
    GMTICKET_RESPONSE_ALREADY_EXIST               = 1,
    GMTICKET_RESPONSE_CREATE_SUCCESS              = 2,
    GMTICKET_RESPONSE_CREATE_ERROR                = 3,
    GMTICKET_RESPONSE_UPDATE_SUCCESS              = 4,
    GMTICKET_RESPONSE_UPDATE_ERROR                = 5,
    GMTICKET_RESPONSE_TICKET_DELETED              = 9
};

// from Blizzard LUA:
// GMTICKET_ASSIGNEDTOGM_STATUS_NOT_ASSIGNED = 0;    -- ticket is not currently assigned to a gm
// GMTICKET_ASSIGNEDTOGM_STATUS_ASSIGNED = 1;        -- ticket is assigned to a normal gm
// GMTICKET_ASSIGNEDTOGM_STATUS_ESCALATED = 2;        -- ticket is in the escalation queue
// 3 is a custom value and should never actually be sent
enum GMTicketEscalationStatus
{
    TICKET_UNASSIGNED                             = 0,
    TICKET_ASSIGNED                               = 1,
    TICKET_IN_ESCALATION_QUEUE                    = 2,
    TICKET_ESCALATED_ASSIGNED                     = 3
};

// from blizzard lua
enum GMTicketOpenedByGMStatus
{
    GMTICKET_OPENEDBYGM_STATUS_NOT_OPENED = 0,      // ticket has never been opened by a gm
    GMTICKET_OPENEDBYGM_STATUS_OPENED     = 1       // ticket has been opened by a gm
};

enum LagReportType
{
    LAG_REPORT_TYPE_LOOT = 1,
    LAG_REPORT_TYPE_AUCTION_HOUSE = 2,
    LAG_REPORT_TYPE_MAIL = 3,
    LAG_REPORT_TYPE_CHAT = 4,
    LAG_REPORT_TYPE_MOVEMENT = 5,
    LAG_REPORT_TYPE_SPELL = 6
};

class GmTicket
{
public:
    GmTicket();
    GmTicket(Player* player);
    ~GmTicket();

    bool IsClosed() const { return !_closedBy.IsEmpty(); }
    bool IsCompleted() const { return _completed; }
    bool IsFromPlayer(ObjectGuid guid) const { return guid == _playerGuid; }
    bool IsAssigned() const { return !_assignedTo.IsEmpty(); }
    bool IsAssignedTo(ObjectGuid guid) const { return guid == _assignedTo; }
    bool IsAssignedNotTo(ObjectGuid guid) const { return IsAssigned() && !IsAssignedTo(guid); }

    uint32 GetId() const { return _id; }
    Player* GetPlayer() const { return ObjectAccessor::FindPlayer(_playerGuid); }
    uint32 GetCreatorLowGuid() const { return _playerGuid.GetCounter();  }
    std::string const& GetPlayerName() const { return _playerName; }
    std::string const& GetMessage() const { return _message; }
    Player* GetAssignedPlayer() const { return ObjectAccessor::FindPlayer(_assignedTo); }
    ObjectGuid GetAssignedToGUID() const { return _assignedTo; }
    std::string GetAssignedToName() const
    {
        std::string name;
        // save queries if ticket is not assigned
        if (_assignedTo)
            sObjectMgr.GetPlayerNameByGUID(_assignedTo, name);

        return name;
    }
    uint64 GetLastModifiedTime() const { return _lastModifiedTime; }
    GMTicketEscalationStatus GetEscalatedStatus() const { return _escalatedStatus; }

    void SetEscalatedStatus(GMTicketEscalationStatus escalatedStatus) { _escalatedStatus = escalatedStatus; }
    void SetAssignedTo(ObjectGuid guid, bool isAdmin)
    {
        _assignedTo = guid;
        if (isAdmin && _escalatedStatus == TICKET_IN_ESCALATION_QUEUE)
            _escalatedStatus = TICKET_ESCALATED_ASSIGNED;
        else if (_escalatedStatus == TICKET_UNASSIGNED)
            _escalatedStatus = TICKET_ASSIGNED;
    }
    void SetClosedBy(ObjectGuid value) { _closedBy = value; }
    void SetCompleted() { _completed = true; }
    void SetMessage(std::string const& message)
    {
        _message = message;
        _lastModifiedTime = uint64(time(nullptr));
    }
    void SetComment(std::string const& comment) { _comment = comment; }
    void SetViewed() { _viewed = true; }
    void SetUnassigned();
    void SetPosition(uint32 mapId, float x, float y, float z);
    void SetGmAction(uint32 needResponse, bool needMoreHelp);

    void AppendResponse(std::string const& response) { _response += response; }
    void ResetResponse() { _response.clear(); }

    bool LoadFromDB(Field* fields);
    void SaveToDB() const;
    void DeleteFromDB();

    void WritePacket(WorldPacket& data) const;
    void SendResponse(WorldSession* session) const;

    void TeleportTo(Player* player) const;
    std::string FormatAddonMessage() const;
    std::string FormatMessageString(ChatHandler& handler, bool detailed = false) const;
    std::string FormatMessageString(ChatHandler& handler, const char* szClosedName, const char* szAssignedToName, const char* szUnassignedName, const char* szDeletedName, const char* szCompletedName) const;
    const char* GetTicketCategoryName(TicketType category) const;

    void SetChatLog(std::list<uint32> time, std::string const& log);
    std::string const& GetChatLog() const { return _chatLog; }

    TicketType GetTicketType() const { return _ticketType; }
    void SetTicketType(TicketType type) { _ticketType = type; }

    void SetNeededSecurityLevel(uint8 sec) { _securityNeeded = sec; }
    uint8 GetNeededSecurityLevel() const { return _securityNeeded; }
private:
    uint32 _id;
    ObjectGuid _playerGuid;
    std::string _playerName;
    float _posX;
    float _posY;
    float _posZ;
    uint16 _mapId;
    std::string _message;
    uint64 _createTime;
    uint64 _lastModifiedTime;
    ObjectGuid _closedBy; // 0 = Open, -1 = Console, playerGuid = player abandoned ticket, other = GM who closed it.
    ObjectGuid _assignedTo;
    std::string _comment;
    bool _completed;
    GMTicketEscalationStatus _escalatedStatus;
    bool _viewed;
    bool _needResponse; /// @todo find out the use of this, and then store it in DB
    bool _needMoreHelp;
    uint8 _securityNeeded;
    TicketType _ticketType;
    std::string _response;
    std::string _chatLog; // No need to store in db, will be refreshed every session client side
};
typedef std::unordered_map<uint32, std::unique_ptr<GmTicket>> GmTicketList;

class TicketMgr
{
public:

	TicketMgr();
	~TicketMgr();

    void LoadTickets();
    void LoadSurveys();

    GmTicket* GetTicket(uint32 ticketId)
    {
        GmTicketList::iterator itr = _ticketList.find(ticketId);
        if (itr != _ticketList.end())
            return itr->second.get();

        return nullptr;
    }

    GmTicket* GetTicketByPlayer(ObjectGuid playerGuid)
    {
        auto itr = _accountTicketList.find(playerGuid.GetCounter());
        if (itr != _accountTicketList.end())
            return itr->second;

        return nullptr;
    }

    uint64 GetOldestOpenTime()
    {
        return _oldestOpenTime;
    }

    void AddTicket(GmTicket&& ticket);
    void CloseTicket(uint32 ticketId, ObjectGuid source);

    bool GetStatus() const { return _status; }
    void SetStatus(bool status) { _status = status; }

    uint64 GetLastChange() const { return _lastChange; }
    void UpdateLastChange() { _lastChange = uint64(time(nullptr)); }

    uint32 GetLastTicketId() const { return _lastTicketId; }
    uint32 GenerateTicketId() { return ++_lastTicketId; }
    uint32 GetOpenTicketCount() const { return _openTicketCount; }
    uint32 GetNextSurveyID() { return ++_lastSurveyId; }

    void Initialize();

    void LoadTicketTemplates();
    void SendTicketTemplatesInAddonMessage(Player* pPlayer) const;

    void ShowList(ChatHandler& handler, bool onlineOnly, uint8 category = 0) const;
    void ShowClosedList(ChatHandler& handler) const;
    void ShowEscalatedList(ChatHandler& handler) const;
    void SendTicketsInAddonMessage(Player* pPlayer) const;

    void SendTicket(WorldSession* session, GmTicket* ticket) const;
    /*void ReloadTicket(uint32 ticketId);
    void ReloadTicketCallback(QueryResult* holder);*/

protected:
    void _RemoveTicket(uint32 ticketId, int64 source = -1, bool permanently = false);

    GmTicketList _ticketList;
    std::unordered_map<uint32, GmTicket*> _accountTicketList;
    std::vector<GmTicket*> _openTickets;

    bool   _status;
    uint32 _lastTicketId;
    uint32 _lastSurveyId;
    uint32 _openTicketCount;
    uint64 _lastChange;
    uint64 _oldestOpenTime = 0;
    std::set<uint32> _reloadTicketsSet;
    std::vector<std::pair<std::string, std::string>> m_ticketTemplates;
};

extern TicketMgr sTicketMgr;

#endif // _TICKETMGR_H
