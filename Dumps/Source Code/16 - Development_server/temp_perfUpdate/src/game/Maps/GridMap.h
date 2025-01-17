/*
 * This file is part of the CMaNGOS Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef MANGOS_GRIDMAP_H
#define MANGOS_GRIDMAP_H

#include "Platform/Define.h"
#include "Policies/Singleton.h"
#include "DBCStructure.h"
#include "GridDefines.h"
#include "Maps/GridMapDefines.h"
#include "Object.h"
#include "SharedDefines.h"
#include <memory>
#include <bitset>
#include <list>
#include <atomic>

#define MAX_HEIGHT            100000.0f                     // can be use for find ground height at surface
#define INVALID_HEIGHT       -100000.0f                     // for check, must be equal to VMAP_INVALID_HEIGHT, real value for unknown height is VMAP_INVALID_HEIGHT_VALUE
#define INVALID_HEIGHT_VALUE -200000.0f                     // for return, must be equal to VMAP_INVALID_HEIGHT_VALUE, check value for unknown height is VMAP_INVALID_HEIGHT
#define MAX_FALL_DISTANCE     250000.0f                     // "unlimited fall" to find VMap ground if it is available, just larger than MAX_HEIGHT - INVALID_HEIGHT
#define DEFAULT_HEIGHT_SEARCH     10.0f                     // default search distance to find height at nearby locations
#define DEFAULT_WATER_SEARCH      50.0f                     // default search distance to case detection water level

class Creature;
class Unit;
class WorldPacket;
class InstanceData;
class Group;
class BattleGround;
class Map;
struct LiquidTypeEntry;

class GridMap
{
    private:

        uint32 m_flags = 0;

        // Area data
        uint16 m_gridArea = 0;
        uint16* m_area_map = nullptr;

        // Height level data
        float m_gridHeight = INVALID_HEIGHT_VALUE;
        float m_gridIntHeightMultiplier;
        union
        {
            float* m_V9;
            uint16* m_uint16_V9;
            uint8* m_uint8_V9;
        };
        union
        {
            float* m_V8;
            uint16* m_uint16_V8;
            uint8* m_uint8_V8;
        };

        // Liquid data
        uint16 m_liquidGlobalEntry;
        uint8 m_liquidGlobalFlags;
        uint8 m_liquid_offX;
        uint8 m_liquid_offY;
        uint8 m_liquid_width;
        uint8 m_liquid_height;
        float m_liquidLevel;
        uint16* m_liquidEntry = nullptr;
        uint8* m_liquidFlags = nullptr;
        float* m_liquid_map = nullptr;

        bool loadAreaData(FILE* in, uint32 offset, uint32 size);
        bool loadHeightData(FILE* in, uint32 offset, uint32 size);
        bool loadGridMapLiquidData(FILE* in, uint32 offset, uint32 size);

        // Get height functions and pointers
        typedef float(GridMap::*pGetHeightPtr)(float x, float y) const;
        pGetHeightPtr m_gridGetHeight = &GridMap::getHeightFromFlat;
        float getHeightFromFloat(float x, float y) const;
        float getHeightFromUint16(float x, float y) const;
        float getHeightFromUint8(float x, float y) const;
        float getHeightFromFlat(float x, float y) const;

    public:

        GridMap();
        ~GridMap();

        bool loadData(char const* filaname);
        void unloadData();

        static bool ExistMap(uint32 mapid, int gx, int gy);
        static bool ExistVMap(uint32 mapid, int gx, int gy);

        uint16 getArea(float x, float y) const;
        inline float getHeight(float x, float y) const { return (this->*m_gridGetHeight)(x, y); }
        float getLiquidLevel(float x, float y) const;
        uint8 getTerrainType(float x, float y) const;
        GridMapLiquidStatus getLiquidStatus(float x, float y, float z, uint8 ReqLiquidType, GridMapLiquidData* data = 0);
};

template<typename Countable>
class Referencable
{
    public:
        Referencable() { m_count = 0; }

        void AddRef() { ++m_count; }
        bool Release() { return (--m_count < 1); }
        bool IsReferenced() const { return (m_count > 0); }

    private:
        Referencable(const Referencable&);
        Referencable& operator=(const Referencable&);

        Countable m_count;
};

using AtomicLong = std::atomic<long>;

// class for sharing and managin GridMap objects
class TerrainInfo : public Referencable<AtomicLong>
{
    public:
        TerrainInfo(uint32 mapid);
        ~TerrainInfo();

        uint32 GetMapId() const { return m_mapId; }

        // TODO: move all terrain/vmaps data info query functions
        // from 'Map' class into this class
        float GetHeightStatic(float x, float y, float z, bool checkVMap = true, float maxSearchDist = DEFAULT_HEIGHT_SEARCH) const;
        float GetWaterLevel(float x, float y, float z, float* pGround = nullptr) const;
        float GetWaterOrGroundLevel(Position const& position, float* pGround = nullptr, bool swim = false) const;
        float GetWaterOrGroundLevel(float x, float y, float z, float* pGround = nullptr, bool swim = false) const;
        bool IsSwimmable(float x, float y, float z, float radius = 1.5f, GridMapLiquidData* data = 0) const;
        bool IsInWater(float x, float y, float z, GridMapLiquidData* data = 0) const;
        bool IsUnderWater(float x, float y, float z) const;

        GridMapLiquidStatus getLiquidStatus(float x, float y, float z, uint8 ReqLiquidType, GridMapLiquidData* data = 0) const;

        uint16 GetAreaFlag(float x, float y, float z, bool* isOutdoors = 0) const;
        uint8 GetTerrainType(float x, float y) const;

        uint32 GetAreaId(float x, float y, float z) const;
        uint32 GetZoneId(float x, float y, float z) const;
        void GetZoneAndAreaId(uint32& zoneid, uint32& areaid, float x, float y, float z) const;

        bool GetAreaInfo(float x, float y, float z, uint32& mogpflags, int32& adtId, int32& rootId, int32& groupId) const;
        bool IsOutdoors(float x, float y, float z) const;


        void LoadAll();
        // this method should be used only by TerrainManager
        // to cleanup unreferenced GridMap objects - they are too heavy
        // to destroy them dynamically, especially on highly populated servers
        // THIS METHOD IS NOT THREAD-SAFE!!!! AND IT SHOULDN'T BE THREAD-SAFE!!!!
        void CleanUpGrids(const uint32 diff);

    protected:
        friend class Map;
        // load/unload terrain data
        GridMap* Load(const uint32 x, const uint32 y);
        void Unload(const uint32 x, const uint32 y);

    private:
        TerrainInfo(const TerrainInfo&);
        TerrainInfo& operator=(const TerrainInfo&);

        GridMap* GetGrid(const float x, const float y);
        GridMap* LoadMapAndVMap(const uint32 x, const uint32 y);

        int RefGrid(const uint32& x, const uint32& y);
        int UnrefGrid(const uint32& x, const uint32& y);

        const uint32 m_mapId;

        GridMap* m_GridMaps[MAX_NUMBER_OF_GRIDS][MAX_NUMBER_OF_GRIDS];
        int16 m_GridRef[MAX_NUMBER_OF_GRIDS][MAX_NUMBER_OF_GRIDS];

        // global garbage collection timer
        ShortIntervalTimer i_timer;

        using LOCK_TYPE = std::mutex;
        using LOCK_GUARD = std::unique_lock<LOCK_TYPE>;
        LOCK_TYPE m_mutex;
        LOCK_TYPE m_refMutex;
};

class TerrainManager : public MaNGOS::Singleton<TerrainManager, MaNGOS::ClassLevelLockable<TerrainManager, std::mutex> >
{
        typedef std::unordered_map<uint32,  TerrainInfo*> TerrainDataMap;
        friend class MaNGOS::OperatorNew<TerrainManager>;

    public:
        TerrainInfo* LoadTerrain(const uint32 mapId);
        void UnloadTerrain(const uint32 mapId);

        void Update(const uint32 diff);
        void UnloadAll();

        // Liquid Types
        LiquidTypeEntry const* GetLiquidType(uint32 id) const { return id < GetMaxLiquidType() ? mLiquidTypes[id].get() : nullptr; }
        uint32 GetMaxLiquidType() const { return mLiquidTypes.size(); }

        uint16 GetAreaFlag(uint32 mapid, float x, float y, float z) const
        {
            TerrainInfo* pData = const_cast<TerrainManager*>(this)->LoadTerrain(mapid);
            return pData->GetAreaFlag(x, y, z);
        }
        uint32 GetAreaId(uint32 mapid, float x, float y, float z) const
        {
            return GetAreaIdByAreaFlag(GetAreaFlag(mapid, x, y, z), mapid);
        }
        uint32 GetZoneId(uint32 mapid, float x, float y, float z) const
        {
            return GetZoneIdByAreaFlag(GetAreaFlag(mapid, x, y, z), mapid);
        }
        void GetZoneAndAreaId(uint32& zoneid, uint32& areaid, uint32 mapid, float x, float y, float z)
        {
            GetZoneAndAreaIdByAreaFlag(zoneid, areaid, GetAreaFlag(mapid, x, y, z), mapid);
        }

        static uint32 GetAreaIdByAreaFlag(uint16 areaflag, uint32 map_id);
        static uint32 GetZoneIdByAreaFlag(uint16 areaflag, uint32 map_id);
        static void GetZoneAndAreaIdByAreaFlag(uint32& zoneid, uint32& areaid, uint16 areaflag, uint32 map_id);

    private:
        TerrainManager();
        ~TerrainManager();

        TerrainManager(const TerrainManager&);
        TerrainManager& operator=(const TerrainManager&);

        typedef MaNGOS::ClassLevelLockable<TerrainManager, std::mutex>::Lock Guard;
        TerrainDataMap i_TerrainMap;

        typedef std::vector<std::unique_ptr<LiquidTypeEntry>> LiquidTypeStore;
        LiquidTypeStore mLiquidTypes;
};

#define sTerrainMgr TerrainManager::Instance()

#endif
