if (!window.WH) {
    window.WH = {PageMeta: {}, staticUrl: "../css/tooltips/", wowheadRemote: true}
}
WH.isTouch = function () {
    if (!WH.wowheadRemote && typeof Platform !== "undefined") {
        WH.isTouch = function () {
            return Platform.isTouch()
        }
    } else {
        var b = navigator.userAgent || navigator.vendor || window.opera;
        var a = {isMobile: false, isTablet: false};
        if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(b) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(b.substr(0, 4))) {
            a.isMobile = true
        }
        if (!a.isMobile && /(android|ipad|playbook|silk)/i.test(b)) {
            a.isTablet = true
        }
        WH.isTouch = (function (c) {
            return c.isMobile || c.isTablet
        }).bind(null, a);
        WH.isMobile = (function (c) {
            return c
        }).bind(null, a.isMobile);
        WH.isTablet = (function (c) {
            return c
        }).bind(null, a.isTablet)
    }
    return WH.isTouch()
};
if (!window.$WowheadPower) {
    window.$WowheadPower = new function () {
        if (!WH.Types) {
            WH.Types = new function () {
                this.NPC = 1;
                this.OBJECT = 2;
                this.ITEM = 3;
                this.ITEM_SET = 4;
                this.QUEST = 5;
                this.SPELL = 6;
                this.ZONE = 7;
                this.FACTION = 8;
                this.PET = 9;
                this.ACHIEVEMENT = 10;
                this.TITLE = 11;
                this.EVENT = 12;
                this.CLASS = 13;
                this.RACE = 14;
                this.SKILL = 15;
                this.CURRENCY = 17;
                this.PROJECT = 18;
                this.SOUND = 19;
                this.BUILDING = 20;
                this.FOLLOWER = 21;
                this.MISSION_ABILITY = 22;
                this.MISSION = 23;
                this.SHIP = 25;
                this.THREAT = 26;
                this.RESOURCE = 27;
                this.CHAMPION = 28;
                this.ICON = 29;
                this.ORDER_ADVANCEMENT = 30;
                this.FOLLOWER_A = 31;
                this.FOLLOWER_H = 32;
                this.SHIP_A = 33;
                this.SHIP_H = 34;
                this.CHAMPION_A = 35;
                this.CHAMPION_H = 36;
                this.TRANSMOG_ITEM = 37;
                this.BFA_CHAMPION = 38;
                this.BFA_CHAMPION_A = 39;
                this.AFFIX = 40;
                this.BFA_CHAMPION_H = 41;
                this.AZERITE_ESSENCE_POWER = 42;
                this.AZERITE_ESSENCE = 43;
                this.STORYLINE = 44;
                this.ADVENTURE_COMBATANT_ABILITY = 46;
                this.ENCOUNTER = 47;
                this.PET_ABILITY = 200;
                this.SCREENSHOT = 91;
                this.GUIDE_IMAGE = 98;
                this.GUIDE = 100;
                this.TRANSMOG_SET = 101;
                this.OUTFIT = 110;
                this.GEAR_SET = 111;
                this.LISTVIEW = 158
            }
        }
        const aI = WH.Types;
        const C = {garrisonability: "mission-ability", itemset: "item-set", petability: "pet-ability"};
        const aM = -1;
        const l = 0;
        const c = 1;
        const Z = {};
        Z["-1000"] = {name: "Mount", path: "mount", mobile: true, data: {}, maxId: 50000};
        Z["-1001"] = {name: "Recipe", path: "recipe", mobile: true, data: {}, maxId: 500000};
        Z["-1002"] = {name: "Battle Pet", path: "battle-pet", mobile: true, data: {}, maxId: 50000};
        Z[WH.Types.NPC] = {name: "NPC", path: "npc", mobile: false, data: {}, maxId: 500000};
        Z[WH.Types.OBJECT] = {name: "Object", path: "object", mobile: false, data: {}, maxId: 750000};
        Z[WH.Types.ITEM] = {name: "Item", path: "item", mobile: true, data: {}, maxId: 500000};
        Z[WH.Types.ITEM_SET] = {name: "Item Set", path: "item-set", mobile: true, data: {}, maxId: 10000, minId: -5000};
        Z[WH.Types.QUEST] = {name: "Quest", path: "quest", mobile: false, data: {}, maxId: 100000};
        Z[WH.Types.SPELL] = {name: "Spell", path: "spell", mobile: true, data: {}, maxId: 500000};
        Z[WH.Types.ZONE] = {name: "Zone", path: "zone", mobile: false, data: {}, maxId: 50000};
        Z[WH.Types.ACHIEVEMENT] = {name: "Achievement", path: "achievement", mobile: true, data: {}, maxId: 50000};
        Z[WH.Types.EVENT] = {name: "Event", path: "event", mobile: false, data: {}, maxId: 10000};
        Z[WH.Types.CURRENCY] = {name: "Currency", path: "currency", mobile: false, data: {}, maxId: 10000};
        Z[WH.Types.BUILDING] = {name: "Building", path: "building", mobile: false, data: {}, maxId: 1000};
        Z[WH.Types.FOLLOWER] = {name: "Follower", path: "follower", mobile: true, data: {}, maxId: 10000};
        Z[WH.Types.MISSION_ABILITY] = {
            name: "Mission Ability",
            path: "mission-ability",
            mobile: true,
            data: {},
            maxId: 10000
        };
        Z[WH.Types.MISSION] = {name: "Mission", path: "mission", mobile: true, data: {}, maxId: 10000};
        Z[WH.Types.SHIP] = {name: "Ship", path: "ship", mobile: true, data: {}, maxId: 10000};
        Z[WH.Types.THREAT] = {name: "Threat", path: "threat", mobile: false, data: {}, maxId: 1000};
        Z[WH.Types.RESOURCE] = {name: "Resource", path: "resource", mobile: true, data: {}, maxId: 100, minId: 0};
        Z[WH.Types.CHAMPION] = {name: "Champion", path: "champion", mobile: true, data: {}, maxId: 10000};
        Z[WH.Types.ORDER_ADVANCEMENT] = {
            name: "Order Advancement",
            path: "order-advancement",
            mobile: true,
            data: {},
            maxId: 5000
        };
        Z[WH.Types.BFA_CHAMPION] = {name: "BFA Champion", path: "bfa-champion", mobile: true, data: {}, maxId: 10000};
        Z[WH.Types.AFFIX] = {name: "Affix", path: "affix", mobile: true, data: {}, maxId: 1000};
        Z[WH.Types.AZERITE_ESSENCE_POWER] = {
            name: "Azerite Essence Power",
            path: "azerite-essence-power",
            mobile: true,
            data: {},
            maxId: 1000
        };
        Z[WH.Types.AZERITE_ESSENCE] = {
            name: "Azerite Essence",
            path: "azerite-essence",
            mobile: false,
            data: {},
            maxId: 100
        };
        Z[WH.Types.STORYLINE] = {name: "Storyline", path: "storyline", mobile: false, data: {}, maxId: 10000};
        Z[WH.Types.ADVENTURE_COMBATANT_ABILITY] = {
            name: "Adventure Combatant Ability",
            path: "adventure-combatant-ability",
            mobile: true,
            data: {},
            maxId: 10000
        };
        Z[WH.Types.GUIDE] = {name: "Guide", path: "guide", mobile: false, data: {}};
        Z[WH.Types.TRANSMOG_SET] = {name: "Transmog Set", path: "transmog-set", mobile: true, data: {}, maxId: 50000};
        Z[WH.Types.OUTFIT] = {name: "Outfit", path: "outfit", mobile: true, data: {}};
        Z[WH.Types.PET_ABILITY] = {
            name: "Battle Pet Ability",
            path: "pet-ability",
            mobile: true,
            data: {},
            maxId: 10000
        };
        const S = WH.wowheadRemote;
        const z = WH.TERMS || {
            genericequip_tip: '<span class="q2">Equip: Increases your $1 by <!--rtg$2-->$3&nbsp;<small>(<!--rtg%$2-->0&nbsp;@&nbsp;L<!--lvl-->0)</small>.</span><br />',
            reforged_format: "Reforged ($1 $2 &rarr; $1 $3)"
        };
        var aU = S;
        var y = false;
        var aA = {applyto: 3}, M = document.getElementsByTagName("head")[0], aQ,
            aF = {attach: 3, attachToIcon: 1, attachWithoutScreenshot: 4, "float": 0, floatWithoutIcon: 5, screen: 2},
            w = 550, aY = {colorLinks: "colorlinks", iconizeLinks: "iconizelinks", renameLinks: "renamelinks"}, al, E,
            U, ay, m, ar, aw, av, aq = aF["float"], G = false, af = null, F = 1, D = 1, O = 0, ag = 1, aE = 2, d = 3,
            ao = 4, u = 5, ae = 1, V = 2, t = 3, j = 4, aK = 5, ai = 6, Y = 7, aa = 10, k = 12, X = 13, h = 17, aG = 20,
            ad = 21, B = 22, aL = 23, q = 25, aj = 26, n = 27, N = 28, aX = 30, aS = 38, b = 40, aP = 42, T = 43,
            J = 44, aH = 46;
        TYPE_GUIDE = 100, TYPE_TRANSMOGSET = 101, TYPE_OUTFIT = 110, TYPE_PETABILITY = 200, ICONIZE_TYPES = [aa, T, aP, t, ai], CURSOR_HSPACE = 15, CURSOR_VSPACE = 15, _LANG = {
            0: {
                achievementComplete: "Achievement earned by $1 on $2/$3/$4",
                loading: "Loadingâ€¦",
                noResponse: "No response from server :(",
                notFound: "%s Not Found"
            },
            1: {
                achievementComplete: "$1ì´(ê°€) $2/$3/$4ì— ì—…ì ì„ ë‹¬ì„±í•¨",
                loading: "ë¡œë”© ì¤‘â€¦",
                noResponse: "ì„œë²„ê°€ ì‘ë‹µí•˜ì§€ ì•ŠìŠµë‹ˆë‹¤ :(",
                notFound: "%s ì„(ë¥¼) ì°¾ì„ ìˆ˜ ì—†ìŒ"
            },
            2: {
                achievementComplete: "Haut-fait reÃ§u par $1 le $2/$3/$4",
                loading: "Chargementâ€¦",
                noResponse: "Pas de rÃ©ponse du serveur :(",
                notFound: "%s non trouvÃ©"
            },
            3: {
                achievementComplete: "Erfolg wurde von $1 am $3.$2.$4 errungen",
                loading: "LÃ¤dtâ€¦",
                noResponse: "Keine Antwort vom Server :(",
                notFound: "%s nicht gefunden"
            },
            4: {
                achievementComplete: "$1åœ¨$2/$3/$4ä¸ŠèŽ·å¾—æˆå°±",
                loading: "æ­£åœ¨è½½å…¥â€¦",
                noResponse: "æœåŠ¡å™¨æ²¡æœ‰å“åº” :(",
                notFound: "%sæœªæ‰¾åˆ°"
            },
            6: {
                achievementComplete: "Logro conseguido por $1 el $2/$3/$4",
                loading: "Cargandoâ€¦",
                noResponse: "No hay respuesta del servidor :(",
                notFound: "%s no encontrado/a"
            },
            7: {
                achievementComplete: "$1 Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ð»(Ð°) ÑÑ‚Ð¾ Ð´Ð¾ÑÑ‚Ð¸Ð¶ÐµÐ½Ð¸Ðµ $2/$3/$4",
                loading: "Ð—Ð°Ð³Ñ€ÑƒÐ·ÐºÐ°â€¦",
                noResponse: "ÐÐµÑ‚ Ð¾Ñ‚Ð²ÐµÑ‚Ð° Ð¾Ñ‚ ÑÐµÑ€Ð²ÐµÑ€Ð° :(",
                notFound: "%s Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾"
            },
            8: {
                achievementComplete: "Conquista conseguida por $1 em $3/$2/$4",
                loading: "Carregandoâ€¦",
                noResponse: "Sem resposta do servidor :(",
                notFound: "%s nÃ£o encontrado(a)"
            },
            9: {
                achievementComplete: "Impresa compiuta da $1 su $2/$3/$4",
                loading: "Caricamentoâ€¦",
                noResponse: "Nessuna risposta dal server :(",
                notFound: "%s Non Trovato"
            }
        }, STEALTH_TYPES = [TYPE_GUIDE];
        var ac = new function () {
            var a3 = {};
            var a2 = {};
            var a1 = {};
            var a0 = {};
            this.fetch = function (a6, a8) {
                if (!a0.hasOwnProperty(a6) || a0[a6].hasOwnProperty(a8)) {
                    return
                }
                a0[a6][a8] = ag;
                a3[a6][a8] = [];
                var a7 = WH.dataEnvTerm[a8];
                switch (a8) {
                    case WH.dataEnv.BETA:
                        a7 = WH.BETA_DOMAIN || a7;
                        break;
                    case WH.dataEnv.MAIN:
                        a7 = "www";
                        break
                }
                let url;
                if (S) {
                    url = ak(a7) + a2[a6]
                } else {
                    url = WH.Url.getDataPageUrl(a2[a6].replace("/data/", ""))
                }
                url += "&json";
                WH.xhrJsonRequest(url, (function (a9, bb, ba) {
                    if (!ba) {
                        WH.error("Wowhead tooltips failed to load entity scaling data.", ax(a9));
                        return
                    }
                    ac.setData(a9, bb, ba)
                }).bind(null, a6, a8))
            };
            this.getSpellsBySpec = function (a6, a7) {
                var a8 = U || WH.getDataEnv();
                this.registerCallback(X, a8, function () {
                    var ba = a1[X][a8];
                    var a9 = [];
                    if (ba.specMap.hasOwnProperty(a6)) {
                        a9 = ba["class"][ba.specMap[a6]].concat(ba.spec[a6] || [])
                    }
                    a7(a9)
                })
            };
            this.isLoaded = function (a6, a7) {
                if (!a0.hasOwnProperty(a6)) {
                    return true
                }
                if (a0[a6][a7] === ao) {
                    a4();
                    return true
                }
                return false
            };
            this.registerCallback = function (a6, a8, a7) {
                if (this.isLoaded(a6, a8)) {
                    window.requestAnimationFrame(a7);
                    return
                }
                if (!a3[a6].hasOwnProperty(a8)) {
                    this.fetch(a6, a8)
                }
                a3[a6][a8].push(a7)
            };
            this.setData = function (a7, a9, a8) {
                a0[a7][a9] = ao;
                a3[a7][a9] = a3[a7][a9] || [];
                a1[a7][a9] = a8;
                a4();
                var a6 = a3[a7][a9];
                while (a6.length) {
                    a6.shift()()
                }
            };

            function a5() {
                a2[t] = "/data/item-scaling";
                a2[ai] = "/data/spell-scaling";
                a2[X] = "/data/spec-spells";
                for (var a6 in a2) {
                    if (!a2.hasOwnProperty(a6)) {
                        continue
                    }
                    a0[a6] = {};
                    a3[a6] = {};
                    a1[a6] = {}
                }
            }

            function a4() {
                var a7 = U || WH.getDataEnv();
                var a6;
                if (a6 = a1[t][a7]) {
                    WH.staminaFactor = a6.staminaByIlvl;
                    WH.convertRatingToPercent.RB = a6.combatRatingsBase;
                    WH.convertRatingToPercent.LH = a6.ratingsToPercentLH;
                    WH.convertRatingToPercent.RM = a6.ratingsToPercentRM;
                    WH.convertRatingToPercent.LT = a6.ratingsToPercentLT;
                    WH.convertScalingFactor.SV = a6.itemScalingValue;
                    WH.convertScalingFactor.SD = a6.scalingFactors;
                    WH.curvePoints = a6.curvePoints;
                    WH.applyStatModifications.ScalingData = a6.scalingData;
                    WH.Tooltip.ARTIFACT_KNOWLEDGE_MULTIPLIERS = a6.artifactKnowledgeMultiplier;
                    WH.Tooltip.BONUS_ITEM_EFFECTS = a6.bonusEffects.bonus;
                    WH.Tooltip.ITEM_EFFECT_NAMES = a6.bonusEffects.effectSpellName;
                    WH.Tooltip.ITEM_EFFECT_TOOLTIP_HTML = a6.bonusEffects.effect;
                    WH.contentTuningLevels = a6.contentTuningLevels
                }
                if (a6 = a1[ai][a7]) {
                    WH.convertScalingSpell.SV = a6.scalingValue;
                    WH.convertScalingSpell.SpellInformation = a6.spellInformation;
                    WH.convertScalingSpell.RandPropPoints = a6.randPropPoints
                }
            }

            a5()
        };
        this.setScales = ac.setData;
        var p = {0: "enus", 1: "kokr", 2: "frfr", 3: "dede", 4: "zhcn", 6: "eses", 7: "ruru", 8: "ptbr", 9: "itit"};
        var ab = {
            getId: function () {
                return 0
            }, getName: function () {
                return "enus"
            }
        };
        if (typeof aR === "undefined") {
            var aR = {
                traits: {
                    agi: ["Agility", "Agi", "Agi"],
                    arcres: ["Arcane resistance", "Arcane Resist", "ArcR"],
                    arcsplpwr: ["Arcane spell power", "Arcane Power", "ArcP"],
                    armor: ["Armor", "Armor", "Armor"],
                    armorbonus: ["Additional armor", "Bonus Armor", "AddAr"],
                    armorpenrtng: ["Armor penetration rating", "Armor Pen", "Pen"],
                    atkpwr: ["Attack power", "AP", "AP"],
                    block: ["Block value", "Block Value", "BkVal"],
                    blockrtng: ["Block rating", "Block", "Block"],
                    critstrkrtng: ["Critical strike rating", "Crit", "Crit"],
                    defrtng: ["Defense rating", "Defense", "Def"],
                    dmg: ["Weapon damage", "Damage", "Dmg"],
                    dmgmax1: ["Maximum damage", "Max Damage", "Max"],
                    dmgmin1: ["Minimum damage", "Min Damage", "Min"],
                    dodgertng: ["Dodge rating", "Dodge", "Dodge"],
                    dps: ["Damage per second", "DPS", "DPS"],
                    exprtng: ["Expertise rating", "Expertise", "Exp"],
                    firres: ["Fire resistance", "Fire Resist", "FirR"],
                    firsplpwr: ["Fire spell power", "Fire Power", "FireP"],
                    frores: ["Frost resistance", "Frost Resist", "FroR"],
                    frosplpwr: ["Frost spell power", "Frost Power", "FroP"],
                    hastertng: ["Haste rating", "Haste", "Haste"],
                    health: ["Health", "Health", "Hlth"],
                    healthrgn: ["Health regeneration", "HP5", "HP5"],
                    hitrtng: ["Hit rating", "Hit", "Hit"],
                    holres: ["Holy resistance", "Holy Resist", "HolR"],
                    holsplpwr: ["Holy spell power", "Holy Power", "HolP"],
                    "int": ["Intellect", "Int", "Int"],
                    level: ["Level", "Level", "Lvl"],
                    mana: ["Mana", "Mana", "Mana"],
                    manargn: ["Mana regeneration", "MP5", "MP5"],
                    mastrtng: ["Mastery rating", "Mastery", "Mastery"],
                    mleatkpwr: ["Melee attack power", "Melee AP", "AP"],
                    mlecritstrkrtng: ["Melee critical strike rating", "Melee Crit", "Crit"],
                    mledmgmax: ["Melee maximum damage", "Melee Max Damage", "Max"],
                    mledmgmin: ["Melee minimum damage", "Melee Min Damage", "Min"],
                    mledps: ["Melee DPS", "Melee DPS", "DPS"],
                    mlehastertng: ["Melee haste rating", "Melee Haste", "Haste"],
                    mlehitrtng: ["Melee hit rating", "Melee Hit", "Hit"],
                    mlespeed: ["Melee speed", "Melee Speed", "Speed"],
                    natres: ["Nature resistance", "Nature Resist", "NatR"],
                    natsplpwr: ["Nature spell power", "Nature Power", "NatP"],
                    nsockets: ["Number of sockets", "Sockets", "Sockt"],
                    parryrtng: ["Parry rating", "Parry", "Parry"],
                    reqarenartng: ["Required personal and team arena rating", "Req Rating", "Rating"],
                    reqlevel: ["Required level", "Req Level", "Level"],
                    resirtng: ["PvP Resilience rating", "PvP Resilience", "Resil"],
                    rgdatkpwr: ["Ranged attack power", "Ranged AP", "RAP"],
                    rgdcritstrkrtng: ["Ranged critical strike rating", "Ranged Crit", "Crit"],
                    rgddmgmax: ["Ranged maximum damage", "Ranged Max Damage", "Max"],
                    rgddmgmin: ["Ranged minimum damage", "Ranged Min Damage", "Min"],
                    rgddps: ["Ranged DPS", "Ranged DPS", "DPS"],
                    rgdhastertng: ["Ranged haste rating", "Ranged Haste", "Haste"],
                    rgdhitrtng: ["Ranged hit rating", "Ranged Hit", "Hit"],
                    rgdspeed: ["Ranged speed", "Ranged Speed", "Speed"],
                    sepbasestats: "Base stats",
                    sepdefensivestats: "Defensive stats",
                    sepindividualstats: "Individual stats",
                    sepoffensivestats: "Offensive stats",
                    sepresistances: "Resistances",
                    sepweaponstats: "Weapon stats",
                    shares: ["Shadow resistance", "Shadow Resist", "ShaR"],
                    shasplpwr: ["Shadow spell power", "Shadow Power", "ShaP"],
                    speed: ["Speed", "Speed", "Speed"],
                    spi: ["Spirit", "Spi", "Spi"],
                    splcritstrkrtng: ["Spell critical strike rating", "Spell Crit", "Crit"],
                    spldmg: ["Damage done by spells", "Spell Damage", "Dmg"],
                    splheal: ["Healing done by spells", "Healing", "Heal"],
                    splpwr: ["Spell power", "Spell Power", "SP"],
                    splhastertng: ["Spell haste rating", "Spell Haste", "Haste"],
                    splhitrtng: ["Spell hit rating", "Spell Hit", "Hit"],
                    splpen: ["Spell penetration", "Spell Pen", "Pen"],
                    sta: ["Stamina", "Sta", "Sta"],
                    str: ["Strength", "Str", "Str"],
                    pvppower: ["PvP Power", "PvPPower", "PvPPower"]
                }
            }
        }

        function au() {
            if (WH.Tooltip) {
                WH.wowheadRemotePreload = true
            }
            if (S) {
                if (!WH.wowheadRemotePreload) {
                    let jsFiles = ["basic.js?39"];
                    if (g("iconSize")) {
                        jsFiles.push("Icon.js?2")
                    }
                    for (let i = 0, jsFile; jsFile = jsFiles[i]; i++) {
                        let script = document.createElement("script");
                        script.src = "js/vendor/tt/" + jsFile;
                        M.appendChild(script)
                    }
                }
            } else {
                Q();
                r(function () {
                    ab = window.Locale;
                    ac.fetch(t, WH.getDataEnv());
                    ac.fetch(ai, WH.getDataEnv())
                })
            }
        }

        function az() {
            var a1 = g("hide");
            if (!a1) {
                return
            }
            if (typeof aQ !== "undefined") {
                return
            }
            if (!document.styleSheets) {
                return
            }
            var a2 = document.createElement("style");
            a2.type = "text/css";
            M.appendChild(a2);
            if (!window.createPopup) {
                M.appendChild(document.createTextNode(""))
            }
            aQ = document.styleSheets[document.styleSheets.length - 1];
            for (var a0 in a1) {
                if (!a1.hasOwnProperty(a0) || !a1[a0]) {
                    continue
                }
                if (aQ.insertRule) {
                    aQ.insertRule(".wowhead-tooltip .whtt-" + a0 + "{display: none}", aQ.cssRules.length)
                } else {
                    if (aQ.addRule) {
                        aQ.addRule(".wowhead-tooltip .whtt-" + a0, "display: none", -1)
                    }
                }
            }
        }

        this.getEntity = function (a1, a4, a3, a0) {
            var a2 = aW(a1);
            a2[a4] = a2[a4] || {};
            a2[a4][a3] = a2[a4][a3] || {};
            a2[a4][a3][a0] = a2[a4][a3][a0] || {status: O, callbacks: [], data: {}};
            return a2[a4][a3][a0]
        };

        function aW(a0) {
            if (typeof Z[a0] !== "object") {
                throw new Error("Wowhead tooltips could not find config for entity type [" + a0 + "].")
            }
            return Z[a0].data
        }

        function aN(a0) {
            if (typeof Z[a0] !== "object") {
                WH.error("Wowhead tooltips could not find config for entity type.", a0);
                return undefined
            }
            if (!WH.wowheadRemote || !Z[a0].hasOwnProperty("maxId")) {
                return undefined
            }
            return {min: Z[a0].hasOwnProperty("minId") ? Z[a0].minId : 1, max: Z[a0].maxId}
        }

        function ax(a0) {
            if (typeof Z[a0] !== "object") {
                WH.error("Wowhead tooltips could not find config for entity type.", a0);
                return "Entity"
            }
            return Z[a0].name
        }

        function ap(a0) {
            if (typeof Z[a0] !== "object") {
                WH.error("Wowhead tooltips could not find config for entity type.", a0);
                return "unknown"
            }
            return Z[a0].path
        }

        function a(a0, a1) {
            var a2 = _LANG[a0] || _LANG[0];
            return a2[a1] || ""
        }

        function g(a1) {
            var a0 = R();
            if (!a0) {
                return null
            }
            if (!a0.hasOwnProperty(a1)) {
                if (aY[a1] && a0.hasOwnProperty(aY[a1])) {
                    return a0[aY[a1]]
                }
                return null
            }
            return a0[a1]
        }

        function R() {
            if (typeof whTooltips === "object") {
                return whTooltips
            }
            if (typeof wowhead_tooltips === "object") {
                return wowhead_tooltips
            }
            return null
        }

        function aJ(a0) {
            if (typeof Z[a0] !== "object") {
                WH.error("Wowhead tooltips could not find config for entity type.", a0);
                return false
            }
            return Z[a0].mobile
        }

        function Q() {
            if (G) {
                return
            }
            G = true;
            WH.aE(document, "keydown", function (a0) {
                switch (a0.keyCode) {
                    case 27:
                        $WowheadPower.clearTouchTooltip();
                        WH.Tooltip.hide();
                        break
                }
            });
            if (WH.isTouch()) {
                f()
            } else {
                WH.aE(document, "mouseover", H)
            }
        }

        this.attachTouchTooltips = function (a0) {
            if (!WH.isTouch()) {
                return
            }
            if (a0 && a0.nodeType === 1) {
                f(a0)
            }
        };

        function r(a0) {
            if (document.readyState === "loading") {
                document.addEventListener("DOMContentLoaded", a0)
            } else {
                a0()
            }
        }

        function am(a0) {
            if (!a0.dataset || a0.dataset.hasWhTouchEvent === "true") {
                return
            }
            if (a0.onclick == null) {
                a0.onclick = o
            } else {
                WH.aE(a0, "click", o)
            }
            a0.dataset.hasWhTouchEvent = "true"
        }

        function f(a0) {
            if (!WH.isTouch()) {
                return
            }
            r(function () {
                a0 = a0 || document.body;
                var a2 = WH.gE(a0, "a");
                for (var a3 = 0, a1 = a2.length; a3 < a1; a3++) {
                    am(a2[a3])
                }
            })
        }

        this.init = function () {
            if (g("iconSize") && typeof Icon === "undefined") {
                setTimeout($WowheadPower.init, 10);
                return
            }
            if (S) {
                if (!WH.wowheadRemotePreload) {
                    WH.ae(M, WH.ce("link", {
                        type: "text/css",
                        href: WH.staticUrl + "basic.css",
                        rel: "stylesheet"
                    }));
                    if (g("iconSize")) {
                        WH.ae(M, WH.ce("link", {
                            type: "text/css",
                            href: WH.staticUrl + "icon.css",
                            rel: "stylesheet"
                        }))
                    }
                }
            }
            Q();
            r(function () {
                if (g("renameLinks") || g("colorLinks") || g("iconizeLinks") || g("iconSize")) {
                    let links = x();
                    for (let i = 0; i < links.length; i++) {
                        I(links[i])
                    }
                    az()
                } else {
                    if (document.querySelectorAll) {
                        let calcLinks = document.querySelectorAll('a[href*="wowhead.com/talent-calc/embed/"]');
                        for (let i = 0; i < calcLinks.length; i++) {
                            I(calcLinks[i])
                        }
                        calcLinks = document.querySelectorAll('a[href*="wowhead.com/soulbind-calc/embed/"]');
                        for (let i = 0; i < calcLinks.length; i++) {
                            I(calcLinks[i])
                        }
                    }
                }
            })
        };

        function L(a0) {
            let pos = WH.getCursorPos(a0);
            aw = pos.x;
            av = pos.y
        }

        function an(a1, a2) {
            if (a1.classList) {
                for (let i = 0, len = a2.length; i < len; i++) {
                    a1.classList.add(a2[i])
                }
            } else {
                for (var a0 = 0; a0 < a2.length; a0++) {
                    let classAttribute = a1.getAttribute && a1.getAttribute("class") || "";
                    if ((" " + classAttribute + " ").indexOf(" " + a2[a0] + " ") < 0) {
                        a1.setAttribute("class", (classAttribute ? classAttribute + " " : "") + a2[a0])
                    }
                }
            }
        }

        function x() {
            let result = [];
            for (let i = 0; i < document.links.length; i++) {
                result.push(document.links[i])
            }
            return result
        }

        function I(a3, bi, a1) {
            if (bi && a3.dataset && a3.dataset.simpleTooltip) {
                if (!WH.isTouch() && !a3.onmouseout) {
                    if (a3.dataset.tooltipMode !== "attach") {
                        a3.onmousemove = aC
                    }
                    a3.onmouseout = ah
                }
                WH.Tooltip.show(a3, a3.dataset.simpleTooltip.length < 30 ? '<div class="no-wrap">' + a3.dataset.simpleTooltip + "</div>" : a3.dataset.simpleTooltip);
                return c
            }
            if (a3.nodeName !== "A" && a3.nodeName !== "AREA") {
                return aM
            }
            var a5 = a3.rel;
            try {
                if (a3.dataset && a3.dataset.hasOwnProperty("wowhead")) {
                    a5 = a3.dataset.wowhead
                } else {
                    if (a3.getAttribute && a3.getAttribute("data-wowhead")) {
                        a5 = a3.getAttribute("data-wowhead")
                    }
                }
            } catch (bn) {
                void (0)
            }
            if ((!a3.href.length && !a5) || (a5 && /^np\b/.test(a5)) || (a3.getAttribute("data-disable-wowhead-tooltip") === "true") || (WH.isTouch() && a3.getAttribute("data-disable-wowhead-touch-tooltip") === "true")) {
                return l
            }
            let tcRegex = /^https?:\/\/(?:[^/]+\.)?classic\.(?:[^/]+\.)?wowhead\.com\/talent-calc\/embed\/[^#]+/;
            let tcMatches = a3.href.match(tcRegex);
            if (S && tcMatches) {
                a3.parentNode.replaceChild(WH.ce("div", {
                    style: {
                        maxWidth: "750px",
                        maxHeight: "513px",
                        margin: "10px auto"
                    }, className: "wowhead-embed wowhead-embed-talent-calc"
                }, WH.ce("div", {
                    style: {
                        position: "relative",
                        width: "100%",
                        height: 0,
                        paddingTop: "68.4%"
                    }
                }, WH.ce("iframe", {
                    src: tcMatches[0],
                    width: "100%",
                    height: "100%",
                    style: {border: 0, left: 0, position: "absolute", top: 0, borderRadius: "6px"},
                    sandbox: "allow-scripts allow-top-navigation"
                }))), a3);
                return c
            }
            let scRegex = /^https?:\/\/(?:[^/]+\.)?wowhead\.com\/soulbind-calc\/embed\/.+/;
            let scMatches = a3.href.match(scRegex);
            if (S && scMatches) {
                a3.parentNode.replaceChild(WH.ce("div", {
                    style: {
                        maxWidth: "734px",
                        maxHeight: "722px",
                        margin: "10px auto"
                    }, className: "wowhead-embed wowhead-embed-soulbind-calc"
                }, WH.ce("div", {
                    style: {
                        position: "relative",
                        width: "100%",
                        height: 0,
                        paddingTop: "98.5%"
                    }
                }, WH.ce("iframe", {
                    src: scMatches[0],
                    width: "100%",
                    height: "100%",
                    style: {border: 0, left: 0, position: "absolute", top: 0, borderRadius: "6px"},
                    sandbox: "allow-scripts allow-top-navigation"
                }))), a3);
                return c
            }
            let params = {};
            m = params;
            var a4 = function (bp, bq, br) {
                switch (bq) {
                    case"buff":
                    case"map":
                    case"noimage":
                    case"nomajor":
                    case"notip":
                    case"premium":
                    case"pvp":
                    case"sock":
                    case"text":
                    case"twcata":
                    case"twmists":
                    case"twtbc":
                    case"twwotlk":
                        params[bq] = true;
                        break;
                    case"artk":
                    case"c":
                    case"class":
                    case"dd":
                    case"ddsize":
                    case"diff":
                    case"diffnew":
                    case"ench":
                    case"gem1lvl":
                    case"gem2lvl":
                    case"gem3lvl":
                    case"ilvl":
                    case"level":
                    case"lvl":
                    case"nlc":
                    case"pwr":
                    case"q":
                    case"rand":
                    case"rank":
                    case"spec":
                    case"tink":
                    case"upgd":
                        params[bq] = parseInt(br);
                        break;
                    case"abil":
                    case"azerite-essence-powers":
                    case"azerite-powers":
                    case"bonus":
                    case"crafted-stats":
                    case"cri":
                    case"forg":
                    case"gem1bonus":
                    case"gem2bonus":
                    case"gem3bonus":
                    case"gems":
                    case"know":
                    case"pcs":
                    case"rewards":
                        params[bq] = br.split(":");
                        break;
                    case"build":
                    case"domain":
                    case"who":
                        params[bq] = br;
                        break;
                    case"image":
                        if (br === "premium") {
                            params[br] = true
                        } else {
                            params[bq] = br ? ("_" + br) : ""
                        }
                        break;
                    case"transmog":
                        if (br === "hidden") {
                            params[bq] = br
                        } else {
                            params[bq] = parseInt(br)
                        }
                        break;
                    case"when":
                        params[bq] = new Date(parseInt(br));
                        break
                }
            };
            let rawDomain;
            let typeName;
            let id;
            let url;
            if (aA.applyto & 1) {
                if (a3.href.indexOf("http://") === 0 || a3.href.indexOf("https://") === 0) {
                    let matches = a3.href.match(/^https?:\/\/(.+?)?\.?(?:wowhead)\.com(?:\:\d+)?\/\??(item|quest|spell|zone|achievement|event|itemset|item-set|transmog-set|outfit|guide|statistic|currency|npc|object|pet-ability|petability|building|follower|champion|bfa-champion|garrisonability|mission-ability|mission|ship|threat|resource|order-advancement|affix|azerite-essence|azerite-essence-power|storyline|adventure-combatant-ability|mount|recipe|battle-pet)[=/](?:[^/?&#]+-)?(-?\d+(?:\.\d+)?)/);
                    if (!matches) {
                        matches = a3.href.match(/^https?:\/\/(.+?)?\.?(?:wowhead)\.com(?:\:\d+)?\/(guide)s\/([^\?&#]+)/)
                    }
                    if (matches) {
                        rawDomain = matches[1];
                        typeName = matches[2];
                        id = matches[3];
                        url = a3.href
                    }
                    D = 0
                } else {
                    let matches = a3.href.match(/\/\??(item|quest|spell|zone|achievement|event|itemset|item-set|transmog-set|outfit|statistic|currency|npc|object|pet-ability|petability|building|follower|champion|bfa-champion|garrisonability|mission-ability|mission|ship|threat|resource|order-advancement|affix|azerite-essence|azerite-essence-power|storyline|adventure-combatant-ability|guide|mount|recipe|battle-pet)[=/](?:[^/?&#]+-)?(-?\d+(?:\.\d+)?)/);
                    if (!matches) {
                        matches = a3.href.match(/\/(guide)s\/([^\?&#]+)/)
                    }
                    if (matches) {
                        typeName = matches[1];
                        id = matches[2];
                        url = a3.href
                    }
                    D = 1
                }
            }
            if (!typeName && a5 && (aA.applyto & 2)) {
                let matches = a5.match(/(item|quest|spell|zone|achievement|event|itemset|item-set|transmog-set|outfit|statistic|currency|npc|object|pet-ability|petability|building|follower|champion|bfa-champion|garrisonability|mission-ability|mission|ship|threat|resource|order-advancement|affix|azerite-essence|azerite-essence-power|storyline|adventure-combatant-ability|guide|mount|recipe|battle-pet).?(-?\d+(?:\.\d+)?)/);
                if (matches) {
                    typeName = matches[1];
                    id = matches[2]
                }
                D = 1
            }
            if (!typeName) {
                return l
            }
            let type = WH.getTypeIdFromTypeString(typeName);
            if (WH.isTouch() && !a1 && !aJ(type)) {
                return l
            }
            a3.href.replace(/([a-zA-Z0-9-]+)=?([^&?#]*)/g, a4);
            if (a5) {
                a5.replace(/([a-zA-Z0-9-]+)=?([^&?#]*)/g, a4)
            }
            if (params.gems && params.gems.length > 0) {
                var bj;
                for (bj = Math.min(3, params.gems.length - 1); bj >= 0; --bj) {
                    if (parseInt(params.gems[bj])) {
                        break
                    }
                }
                ++bj;
                if (bj == 0) {
                    delete params.gems
                } else {
                    if (bj < params.gems.length) {
                        params.gems = params.gems.slice(0, bj)
                    }
                }
            }
            var a2 = ["bonus", "gem1bonus", "gem2bonus", "gem3bonus"];
            for (var bd = 0, a6; a6 = a2[bd]; bd++) {
                if (params[a6] && params[a6].length > 0) {
                    for (bj = Math.min(16, params[a6].length - 1); bj >= 0; --bj) {
                        if (parseInt(params[a6][bj])) {
                            break
                        }
                    }
                    ++bj;
                    if (bj == 0) {
                        delete params[a6]
                    } else {
                        if (bj < params[a6].length) {
                            params[a6] = params[a6].slice(0, bj)
                        }
                    }
                }
            }
            if (params["crafted-stats"] && params["crafted-stats"].length > 0) {
                let statsList = [];
                for (let bj = 0; bj < Math.min(2, params["crafted-stats"].length); bj++) {
                    let statId = parseInt(params["crafted-stats"][bj]);
                    if (!isNaN(statId)) {
                        statsList.push(statId)
                    }
                }
                if (statsList.length == 0) {
                    delete params["crafted-stats"]
                } else {
                    params["crafted-stats"] = statsList
                }
            }
            if (params.abil && params.abil.length > 0) {
                var bj, bm = [], bh;
                for (bj = 0; bj < Math.min(8, params.abil.length); bj++) {
                    if (bh = parseInt(params.abil[bj])) {
                        bm.push(bh)
                    }
                }
                if (bm.length == 0) {
                    delete params.abil
                } else {
                    params.abil = bm
                }
            }
            if (params.rewards && params.rewards.length > 0) {
                var bj;
                for (bj = Math.min(3, params.rewards.length - 1); bj >= 0; --bj) {
                    if (/^\d+.\d+$/.test(params.rewards[bj])) {
                        break
                    }
                }
                ++bj;
                if (bj == 0) {
                    delete params.rewards
                } else {
                    if (bj < params.rewards.length) {
                        params.rewards = params.rewards.slice(0, bj)
                    }
                }
            }
            ar = a3;
            var bo = null;
            var bg = ab.getId();
            var a0 = WH.getDataEnv();
            if (params.domain) {
                bo = params.domain.toLowerCase()
            } else {
                if (rawDomain) {
                    bo = rawDomain.toLowerCase().replace(/(?:^|\.)(staging|dev)$/, "")
                }
            }
            if (bo !== null) {
                a0 = WH.dataEnv.MAIN;
                bg = WH.getLocaleFromDomain(bo);
                if ((new RegExp("\\b" + WH.BETA_DOMAIN + "\\b")).test(bo)) {
                    a0 = WH.dataEnv.BETA
                } else {
                    if (/^sl|shadow$/.test(bo)) {
                        a0 = WH.dataEnv.BETA
                    } else {
                        for (var bb in WH.dataEnv) {
                            if (!WH.dataEnv.hasOwnProperty(bb) || !WH.dataEnvTerm.hasOwnProperty(WH.dataEnv[bb])) {
                                continue
                            }
                            if ((new RegExp("\\b" + WH.dataEnvTerm[WH.dataEnv[bb]] + "\\b")).test(bo)) {
                                a0 = WH.dataEnv[bb];
                                break
                            }
                        }
                    }
                }
            }
            if (a0 === WH.dataEnv.PTR && !WH.isPtrActive()) {
                a0 = WH.dataEnv.MAIN
            }
            if (a0 === WH.dataEnv.BETA && !WH.isBetaActive()) {
                a0 = WH.dataEnv.MAIN
            }
            if ([WH.dataEnv.BETA, WH.dataEnv.PTR].indexOf(a0) >= 0) {
                bg = 0
            }
            if (a3.href.indexOf("#") !== -1 && document.location.href.indexOf(typeName + "=" + id) !== -1) {
                return l
            }
            var a9 = false;
            if (WH.isTouch()) {
                if ("innerWidth" in window) {
                    a9 = window.innerWidth < w
                } else {
                    var bl = document.documentElement || document.body;
                    a9 = !isNaN(bl.clientWidth) && bl.clientWidth < w
                }
            }
            aq = aF["float"];
            if (a9) {
                aq = aF.screen
            } else {
                if (((a3.parentNode.getAttribute && a3.parentNode.getAttribute("class") || "").indexOf("icon") === 0 && a3.parentNode.nodeName === "DIV") || a3.dataset.whattach === "icon" || a3.dataset.tooltipMode === "icon") {
                    aq = aF.attachToIcon
                } else {
                    if (WH.isTouch() || a3.dataset.whattach === "true" || a3.dataset.tooltipMode === "attach") {
                        aq = aF.attach
                    } else {
                        if (!S) {
                            var a8 = a3.parentNode;
                            var a7 = 0;
                            while (a8) {
                                if ((a8.getAttribute && a8.getAttribute("class") || "").indexOf("menu-inner") === 0) {
                                    aq = aF.attachWithoutScreenshot;
                                    break
                                }
                                a7++;
                                if (a7 > 9) {
                                    break
                                }
                                a8 = a8.parentNode
                            }
                        }
                    }
                }
            }
            if (!WH.isTouch() && !a3.onmouseout) {
                if (aq === aF["float"]) {
                    a3.onmousemove = aC
                }
                a3.onmouseout = ah
            }
            if (aq === aF["float"] && a3.dataset.whtticon === "false") {
                aq = aF.floatWithoutIcon
            }
            if (!S && !a3.whContextMenuAttached) {
                a3.whContextMenuAttached = true;
                WH.aE(a3, "contextmenu", A.bind(a3, a0, bg, type, typeName, id, params, url))
            }
            if (bi) {
                y = true;
                L(bi);
                WH.Tooltip.showingTooltip = true;
                if (typeof a3.overrideTooltip == "object") {
                    var bc = a3.overrideTooltip.html;
                    var ba = a3.overrideTooltip.html2;
                    if (typeof a3.overrideTooltip.htmlGenerator == "function") {
                        bc = a3.overrideTooltip.htmlGenerator(a3.overrideTooltip)
                    }
                    if (typeof a3.overrideTooltip.html2Generator == "function") {
                        ba = a3.overrideTooltip.html2Generator(a3.overrideTooltip)
                    }
                    if (a3.overrideTooltip.spanClass) {
                        bc = '<span class="' + a3.overrideTooltip.spanClass + '">' + bc + "</span>";
                        if (ba) {
                            ba = '<span class="' + a3.overrideTooltip.spanClass + '">' + ba + "</span>"
                        }
                    }
                    aV(bg, bc, a3.overrideTooltip.icon, a3.overrideTooltip.map, a3.overrideTooltip.spellData, ba, a3.overrideTooltip.image, a3.overrideTooltip.imageClass)
                } else {
                    e(type, id, a0, bg, params)
                }
            }
            if (bi || !R()) {
                return c
            }
            var be = $WowheadPower.getEntity(type, at(type, id, params), a0, bg);
            var bf = [];
            if ((g("renameLinks") && a3.getAttribute("data-wh-rename-link") !== "false") || a3.getAttribute("data-wh-rename-link") === "true") {
                bf.push(function () {
                    delete a3.dataset.whIconAdded;
                    a3.innerHTML = "<span>" + be.data.name + "</span>"
                })
            }
            var bk = a3.getAttribute("data-wh-icon-size");
            if ((bk || g("iconizeLinks")) && ICONIZE_TYPES.indexOf(type) !== -1) {
                if (!bk) {
                    bk = g("iconSize")
                }
                bf.push(function () {
                    if (be.data.icon && a3.dataset.whIconAdded !== "true") {
                        aD(a3, be.data, bk)
                    }
                })
            }
            if (g("colorLinks") && type === t) {
                bf.push(function () {
                    an(a3, ["q" + be.data.quality])
                })
            }
            if (bf.length) {
                if (be.status === O || be.status === ag) {
                    be.callbacks = be.callbacks.concat(bf);
                    if (be.status === O) {
                        aB(type, id, a0, bg, true, params)
                    }
                } else {
                    if (be.status === ao || be.status === u) {
                        while (bf.length) {
                            bf.shift()()
                        }
                    }
                }
            }
            return c
        }

        function aD(a1, a2, a0) {
            if (!a0 || typeof WH.Icon === "undefined" || !WH.Icon.isValidSize(a0)) {
                a0 = "tiny"
            }
            var a3 = a2.icon.toLocaleLowerCase();
            if (a0 === "tiny") {
                an(a1, ["icontinyl"]);
                if (a1.style.setProperty) {
                    a1.style.setProperty("padding-left", "18px", "important")
                } else {
                    a1.style.paddingLeft = "18px"
                }
                a1.style.verticalAlign = "center";
                a1.style.background = "url(" + WH.staticUrl + "/images/wow/icons/tiny/" + a3 + ".gif) left center no-repeat"
            } else {
                if (a1.getAttribute("data-wh-icon-added") === "true") {
                    return
                }
                WH.aef(a1, WH.Icon.create(a3, a0, null, {span: true}))
            }
            a1.setAttribute("data-wh-icon-added", "true")
        }

        function H(a0) {
            let target = a0.target;
            let i = 0;
            while (target && i < 5 && I(target, a0) === aM) {
                target = target.parentNode;
                i++
            }
        }

        function o(a0) {
            let target = this;
            if (target.hasWHTouchTooltip === true) {
                return
            }
            let i = 0;
            let result;
            while (target && i < 5 && (result = I(target, a0)) === aM) {
                target = target.parentNode;
                i++
            }
            if (result === c) {
                if (af !== null) {
                    af.removeAttribute("data-showing-touch-tooltip");
                    af.hasWHTouchTooltip = false
                }
                af = target;
                af.hasWHTouchTooltip = true;
                if (a0.stopPropagation) {
                    a0.stopPropagation()
                }
                if (a0.preventDefault) {
                    a0.preventDefault()
                }
                return false
            }
        }

        function aC(a0) {
            L(a0);
            WH.Tooltip.move(aw, av, 0, 0, CURSOR_HSPACE, CURSOR_VSPACE)
        }

        function ah() {
            al = null;
            ar = null;
            WH.Tooltip.hide()
        }

        function ak(a2) {
            if (!WH.isDev()) {
                return "https://" + a2 + ".wowhead.com"
            }
            var a0 = document.location.hostname.split(".");
            a0 = a0[a0.length - 3];
            if (a2 === "www") {
                a2 = a0
            } else {
                a2 = a2 + "." + a0
            }
            var a1 = "https://" + a2 + ".wowhead.com";
            if (document.location.port !== "") {
                a1 += ((document.location.port.indexOf(":") < 0) ? ":" : "") + document.location.port
            }
            if (document.location.protocol !== "https:") {
                a1 = a1.replace(/^https:/, "http:")
            }
            return a1
        }

        function s(a1) {
            var a0 = "tooltip";
            if (m && m.buff) {
                a0 = "buff"
            }
            if (m && m.text) {
                a0 = "text"
            }
            if (m && m.premium) {
                a0 = "tooltip_premium"
            }
            return a0 + (a1 || "")
        }

        function aT() {
            return (m && m.text) ? "text_icon" : "icon"
        }

        function aZ() {
            return (m && m.buff ? "buff" : "") + "spells"
        }

        function v(a0) {
            if (typeof a0 === "undefined") {
                return "image_NONE"
            }
            return "image" + a0
        }

        function e(a5, a1, a2, a7, a3) {
            if (!a3) {
                a3 = {}
            }
            var a6 = at(a5, a1, a3);
            al = a5;
            E = a6;
            U = a2;
            ay = a7;
            m = a3;
            ac.isLoaded(a5, a2);
            var a4 = $WowheadPower.getEntity(a5, a6, a2, a7);
            if (a4.status === ao || a4.status === d) {
                var a8 = a4.data[v(a3.image)];
                var a9 = a4.data["image" + a3.image + "_class"];
                var a0 = K(a5, a1, a2);
                if (a0) {
                    a8 = a0[0];
                    a9 = a0[1]
                }
                aV(a7, a4.data[s()], a4.data[aT()], a4.data.map, a4.data[aZ()], a4.data[s(2)], a8, a9)
            } else {
                if (a4.status === ag || a4.status === u) {
                    if (WH.inArray(STEALTH_TYPES, a5) == -1) {
                        aV(a7, a(a7, "loading"))
                    }
                } else {
                    aB(a5, a1, a2, a7, WH.inArray(STEALTH_TYPES, a5) != -1, a3)
                }
            }
        }

        function A(a7, a0, a3, a1, a6, a5, a2, a4) {
            if (!a4.ctrlKey || a4.button !== 2) {
                return
            }
            a4.preventDefault();
            a4.stopPropagation();
            let menu = [];
            let entity = $WowheadPower.getEntity(a3, at(a3, a6, a5), a7, a0);
            if (entity.data.name) {
                menu.push(Menu.createItem({
                    name: "",
                    label: WH.term("copy_format", WH.TERMS.name),
                    url: WH.copyToClipboard.bind(undefined, entity.data.name, true)
                }))
            }
            menu.push(Menu.createItem({
                name: "",
                label: WH.term("copy_format", WH.TERMS.id),
                url: WH.copyToClipboard.bind(undefined, a6, true)
            }));
            let copyableUrl = a2;
            if (!copyableUrl && WH.Types.existsInDataEnv(a3)) {
                copyableUrl = WH.Url.generate(WH.Entity.getPath(a3, a6), {dataEnv: a7, locale: a0})
            }
            if (copyableUrl) {
                menu.push(Menu.createItem({
                    name: "",
                    label: WH.term("copy_format", WH.TERMS.url),
                    url: WH.copyToClipboard.bind(undefined, a2, true)
                }))
            }
            let markupTag = C[a1] || a1;
            if (WH.markup.tags[markupTag]) {
                menu.push(Menu.createItem({
                    name: "",
                    label: WH.term("copy_format", WH.TERMS.wowheadMarkupTag),
                    url: WH.copyToClipboard.bind(undefined, "[" + markupTag + "=" + a6 + "]", true)
                }))
            }
            Menu.add(this, menu, {noEvents: true, showAtElement: true, showImmediately: true}, a4)
        }

        function aB(ba, a1, a2, bd, a9, a3) {
            var bb = at(ba, a1, a3);
            var a5 = $WowheadPower.getEntity(ba, bb, a2, bd);
            if (a5.status !== O && a5.status !== aE) {
                return
            }
            a5.status = ag;
            var a7 = aN(ba);
            if (a7 && (parseInt(a1, 10) < a7.min || parseInt(a1, 10) > a7.max)) {
                $WowheadPower.register(ba, a1, a2, bd, {error: "ID is out of range"});
                return
            }
            if (!a9) {
                a5.timer = setTimeout(W.bind(this, ba, bb, a2, bd), 333)
            }
            var be = [];
            for (var a6 in a3) {
                switch (a6) {
                    case"spec":
                        if (ba === ai || ba === aP) {
                            break
                        }
                    case"abil":
                    case"artk":
                    case"azerite-essence-powers":
                    case"azerite-powers":
                    case"bonus":
                    case"build":
                    case"class":
                    case"crafted-stats":
                    case"dd":
                    case"ddsize":
                    case"diff":
                    case"diffnew":
                    case"ench":
                    case"gem1bonus":
                    case"gem1lvl":
                    case"gem2bonus":
                    case"gem2lvl":
                    case"gem3bonus":
                    case"gem3lvl":
                    case"gems":
                    case"ilvl":
                    case"level":
                    case"lvl":
                    case"nlc":
                    case"nomajor":
                    case"pvp":
                    case"q":
                    case"rand":
                    case"rank":
                    case"rewards":
                    case"sock":
                    case"tink":
                    case"transmog":
                    case"twcata":
                    case"twmists":
                    case"twtbc":
                    case"twwotlk":
                    case"upgd":
                        if (typeof a3[a6] === "object") {
                            be.push(a6 + "=" + a3[a6].join(":"))
                        } else {
                            if (a3[a6] === true) {
                                be.push(a6)
                            } else {
                                be.push(a6 + "=" + a3[a6])
                            }
                        }
                        break
                }
            }
            var a4 = WH.getDomainFromLocale(bd);
            switch (a2) {
                case WH.dataEnv.MAIN:
                    break;
                case WH.dataEnv.BETA:
                    if (WH.BETA_DOMAIN) {
                        a4 += (a4 ? "." : "") + WH.BETA_DOMAIN;
                        break
                    }
                default:
                    a4 += (a4 ? "." : "") + WH.dataEnvTerm[a2]
            }
            if (!a4) {
                a4 = "www"
            }
            var a8 = ak(a4);
            if (a2 === WH.dataEnv.PTR || a2 === WH.dataEnv.BETA) {
                if (WH.getDataBuild(a2) !== "0") {
                    be.push(WH.getDataBuild(a2))
                }
            }
            if (!ac.isLoaded(ba, a2)) {
                ac.fetch(ba, a2)
            }
            if (ba == t && a3 && a3.hasOwnProperty("lvl") && !ac.isLoaded(ai, a2)) {
                ac.fetch(ai, a2)
            }
            var a0 = be.length ? "?" + be.join("&") : "";
            var bc = a8 + "/tooltip/" + ap(ba) + "/" + a1 + a0;

            bc = 'api/?url=tooltip/get/a/' + a1 + '&p=' + a1;

            WH.xhrJsonRequest(bc, (function (bh, bk, bg, bj, bf, bi) {
                if (!bi) {
                    WH.error("Wowhead tooltips failed to load entity data.", ax(bh) + " #" + bk);
                    return
                } else {
                    if (bi.error) {
                        WH.error("Wowhead tooltip request responded with an error.", bi.error, ax(bh) + " #" + bk)
                    }
                }
                $WowheadPower.register(bh, bg, bj, bf, bi)
            }).bind(null, ba, a1, bb, a2, bd))
        }

        function aV(bk, a8, bq, bt, a3, a7, bc, a4) {
            az();
            if (!y) {
                return
            }
            if (ar && ar._fixTooltip) {
                a8 = ar._fixTooltip(a8, al, E, ar)
            }
            var a5 = false;
            if (!a8) {
                a8 = a(bk, "notFound").replace("%s", ax(al));
                bq = "inv_misc_questionmark";
                a5 = true
            } else {
                if (m != null) {
                    if (WH.reforgeStats && m.forg && WH.reforgeStats[m.forg]) {
                        var bs = WH.reforgeStats[m.forg];
                        var bu = [bs.i1];
                        for (var bn in WH.individualToGlobalStat) {
                            if (WH.individualToGlobalStat[bn] == bu[0]) {
                                bu.push(bn)
                            }
                        }
                        var bh;
                        if ((bh = a8.match(new RegExp("(<!--(stat|rtg)(" + bu.join("|") + ")-->)[+-]?([0-9]+)"))) && !a8.match(new RegExp("<!--(stat|rtg)" + bs.i2 + "-->[+-]?[0-9]+"))) {
                            var bg = Math.floor(bh[4] * bs.v), bb = aR.traits[bs.s2][0];
                            if (bs.i2 == 6) {
                                a8 = a8.replace("<!--rs-->", "<br />+" + bg + " " + bb)
                            } else {
                                a8 = a8.replace("<!--rr-->", WH.sprintfGlobal(z.genericequip_tip, bb.toLowerCase(), bs.i2, bg))
                            }
                            a8 = a8.replace(bh[0], bh[1] + (bh[4] - bg));
                            a8 = a8.replace("<!--rf-->", '<span class="q2">' + WH.sprintfGlobal(z.reforged_format, bg, aR.traits[bs.s1][2], aR.traits[bs.s2][2]) + "</span><br />")
                        }
                    }
                    if (m.pcs && m.pcs.length) {
                        var bf = 0;
                        for (var bn = 0, bo = m.pcs.length; bn < bo; ++bn) {
                            var bh;
                            var bw = new RegExp("<span><!--si([0-9]+:)*" + m.pcs[bn] + '(:[0-9]+)*--><a href="/??item=(\\d+)">(.+?)</a></span>');
                            if (bh = a8.match(bw)) {
                                var bm = !isNaN(parseInt(ay)) ? p[ay] : "enus";
                                var bv = (WH.isSet("g_items") && g_items[m.pcs[bn]]) ? g_items[m.pcs[bn]]["name_" + bm] : bh[4];
                                var a6 = '<a href="/item=' + bh[3] + '">' + bv + "</a>";
                                var bl = '<span class="q13"><!--si' + m.pcs[bn] + "-->" + a6 + "</span>";
                                a8 = a8.replace(bh[0], bl);
                                ++bf
                            }
                        }
                        if (bf > 0) {
                            a8 = a8.replace("(0/", "(" + bf + "/");
                            a8 = a8.replace(new RegExp("<span>\\(([0-" + bf + "])\\)", "g"), '<span class="q2">($1)')
                        }
                    }
                    if (m.know && m.know.length) {
                        a8 = WH.setTooltipSpells(a8, m.know, a3)
                    }
                    if (m.lvl && !m.ilvl) {
                        a8 = WH.setTooltipLevel(a8, (m.lvl ? m.lvl : WH.maxLevel), m.buff)
                    }
                    if (m.who && m.when) {
                        a8 = a8.replace("<table><tr><td><br />", '<table><tr><td><br /><span class="q2">' + WH.sprintf(a(bk, "achievementComplete"), m.who, m.when.getMonth() + 1, m.when.getDate(), m.when.getFullYear()) + "</span><br /><br />");
                        a8 = a8.replace(/class="q0"/g, 'class="r3"')
                    }
                    if (m.notip && bc) {
                        a8 = "";
                        bq = null
                    }
                    if ((al == TYPE_PETABILITY) && m.pwr) {
                        a8 = a8.replace(/<!--sca-->(\d+)<!--sca-->/g, function (bx, by) {
                            return Math.floor(parseInt(by) * (1 + 0.05 * m.pwr))
                        })
                    }
                    if ((al == aa) && m.cri) {
                        for (var bn = 0; bn < m.cri.length; bn++) {
                            a8 = a8.replace(new RegExp("<!--cr" + parseInt(m.cri[bn]) + ":[^<]+", "g"), '<span class="q2">$&</span>')
                        }
                    }
                }
            }
            if (!aU && WH.isSet("g_user") && ((WH.isRetailTree(U) && ("lists" in g_user) && WH.isSet("g_completion")) || (WH.isClassicTree(U) && g_user.characterProfiles && g_user.characterProfiles.length))) {
                var bj = "";
                var a0 = (WH.isRetailTree(U) && (al in g_types) && (g_types[al] in g_completion)) ? g_completion[g_types[al]] : false;
                var ba = $WowheadPower.getEntity(al, E, U, ay);
                if (a0 && (al == aK)) {
                    if (a5 || a8 === a(bk, "loading") || (ba.hasOwnProperty("worldquesttype") && ba.worldquesttype != 0) || (ba.hasOwnProperty("daily") && ba.daily != 0) || (ba.hasOwnProperty("weekly") && ba.weekly != 0)) {
                        a0 = false
                    }
                }
                var bd = !(a0 && (al in g_completion_categories) && WH.inArray(g_completion_categories[al], ba.completion_category) === -1);
                var a9 = /^-?\d+(?:\.\d+)?/.exec(E);
                a9 = (a9 && a9.length) ? a9[0] : E;
                if (a0) {
                    for (var br in g_user.lists) {
                        var bi = g_user.lists[br];
                        if (!(bi.id in a0)) {
                            continue
                        }
                        var bp = (WH.inArray(a0[bi.id], a9) != -1);
                        if (!bp && !bd) {
                            continue
                        }
                        bj += '<br><span class="progress-icon ' + (bp ? "progress-8" : "progress-0") + '"></span> ';
                        bj += bi.character + " - " + bi.realm + " " + bi.region
                    }
                }
                if (WH.isClassicTree(U) && al === aK) {
                    for (var a2, bn = 0; a2 = g_user.characterProfiles[bn]; bn++) {
                        var bp = (WH.inArray(a2.quests, a9) != -1);
                        if (!bp && !bd) {
                            continue
                        }
                        bj += '<br><span class="progress-icon ' + (bp ? "progress-8" : "progress-0");
                        bj += '"></span> ' + a2.name + " - " + a2.realm
                    }
                }
                if (WH.isRetailTree(U) && al === TYPE_TRANSMOGSET && g_completion.wardrobe) {
                    (g_user.lists || []).forEach(function (bx) {
                        let amount = WH.Wow.TransmogSet.getCompletionAmount(ba.data.completionData || {}, bx.id);
                        if (amount > 0) {
                            bj += '<br><span class="progress-icon progress-' + Math.max(1, Math.floor(amount * 8)) + '"></span> ';
                            bj += bx.character + " - " + bx.realm + " " + bx.region
                        }
                    })
                }
                if (bj != "") {
                    a8 += '<br><span class="q">' + WH.TERMS.completion + ":</span>" + bj
                }
            }
            if (!S && [TYPE_TRANSMOGSET, j].includes(al) && typeof WH.getPreferredTransmogRace !== "undefined") {
                let trg = WH.getPreferredTransmogRace();
                let race = trg.race;
                let gender = trg.gender - 1;
                let div = WH.ce("div", {innerHTML: a8});
                let pic = WH.qs("picture", div);
                if (pic) {
                    if (pic.dataset.requiredRace && !ar.dataset.tooltipIgnoreRequiredRace) {
                        race = pic.dataset.requiredRace
                    }
                    let supportClass = al === j ? WH.Wow.ItemSet : WH.Wow.TransmogSet;
                    pic.parentNode.replaceChild(WH.ce("img", {
                        src: supportClass.getThumbUrl(E, race, gender, U),
                        width: 260,
                        height: 440,
                        style: {display: "block", margin: "0 auto"}
                    }), pic);
                    a8 = div.innerHTML
                }
            }
            if (!S && a8 && (m.diff || m.diffnew || m.noimage)) {
                bc = "";
                a4 = ""
            }
            a8 = a8.replace("http://", "https://");
            if (m.map && bt && bt.getMap) {
                a7 = bt.getMap()
            }
            var a1 = function (bz, bx) {
                if (al !== bz.type || E !== bz.id || U !== bz.dataEnv || ay !== bz.locale || m !== bz.params) {
                    return
                }
                switch (aq) {
                    case aF.screen:
                        WH.Tooltip.showInScreen(ar, bx, null, a7, bc, a4, bq);
                        break;
                    case aF.attachToIcon:
                    case aF.attach:
                        var by = WH.isElementFixedPosition(ar);
                        WH.Tooltip.setIcon(aq === aF.attachToIcon ? null : bq, by);
                        WH.Tooltip.show(ar, bx, null, null, null, a7, bc, a4, by);
                        break;
                    case aF.attachWithoutScreenshot:
                        var by = WH.isElementFixedPosition(ar);
                        WH.Tooltip.setIcon(bq, by);
                        WH.Tooltip.show(ar, bx, null, null, null, a7, null, null, by);
                        break;
                    case aF.floatWithoutIcon:
                        var by = WH.isElementFixedPosition(ar);
                        WH.Tooltip.setIcon(null, by);
                        WH.Tooltip.showAtXY(bx, aw, av, CURSOR_HSPACE, CURSOR_VSPACE, a7, bc, a4, by);
                        break;
                    case aF["float"]:
                    default:
                        var by = WH.isElementFixedPosition(ar);
                        WH.Tooltip.setIcon(bq, by);
                        WH.Tooltip.showAtXY(bx, aw, av, CURSOR_HSPACE, CURSOR_VSPACE, a7, bc, a4, by)
                }
                if (S && WH.Tooltip.logo) {
                    WH.Tooltip.logo.style.display = (D ? "block" : "none")
                }
            };
            var be = {type: al, id: E, dataEnv: U, locale: ay, params: m};
            aO(a8, a3, a1.bind(this, be), be)
        }

        function aO(a1, a2, a4, a3) {
            switch (a3.type) {
                case aP:
                    var a0 = $WowheadPower.getEntity(a3.type, a3.id, a3.dataEnv, a3.locale);
                    if (a3.params.spec && !(a3.params.know && a3.params.know.length)) {
                        ac.getSpellsBySpec(a3.params.spec, function (a5) {
                            a1 = a1.replace(/<!--embed:([^>]+)-->/g, function (a6, a7) {
                                return WH.setTooltipSpells(a0.data.embeds[a7].tooltip, a5, a0.data.embeds[a7].spells)
                            });
                            a4(a1)
                        });
                        break
                    } else {
                        a1 = a1.replace(/<!--embed:([^>]+)-->/g, function (a5, a6) {
                            return WH.setTooltipSpells(a0.data.embeds[a6].tooltip, a3.params.know, a0.data.embeds[a6].spells)
                        })
                    }
                    window.requestAnimationFrame(a4.bind(null, a1));
                    break;
                case ai:
                    if (a3.params.spec && !(a3.params.know && a3.params.know.length)) {
                        ac.getSpellsBySpec(a3.params.spec, function (a5) {
                            a1 = WH.setTooltipSpells(a1, a5, a2);
                            a4(a1)
                        });
                        break
                    }
                    window.requestAnimationFrame(a4.bind(null, a1));
                    break;
                default:
                    window.requestAnimationFrame(a4.bind(null, a1))
            }
        }

        function W(a2, a4, a3, a0) {
            if (al == a2 && E == a4 && U == a3 && ay == a0) {
                aV(a0, a(a0, "loading"));
                var a1 = $WowheadPower.getEntity(a2, a4, a3, a0);
                a1.timer = setTimeout(P.bind(this, a2, a4, a3, a0), 3850)
            }
        }

        function P(a2, a4, a3, a0) {
            var a1 = $WowheadPower.getEntity(a2, a4, a3, a0);
            a1.status = aE;
            if (al == a2 && E == a4 && U == a3 && ay == a0) {
                aV(a0, a(a0, "noResponse"))
            }
        }

        function at(a0, a2, a1) {
            if (a1.build) {
                return a2 + "build" + a1.build
            }
            return a2 + (a1.rand ? "r" + a1.rand : "") + (a1.ench ? "e" + a1.ench : "") + (a1.gems ? "g" + a1.gems.join(",") : "") + (a1.sock ? "s" : "") + (a1.upgd ? "u" + a1.upgd : "") + (a1.twtbc ? "twtbc" : "") + (a1.twwotlk ? "twwotlk" : "") + (a1.twcata ? "twcata" : "") + (a1.twmists ? "twmists" : "") + (a1.ilvl ? "ilvl" + a1.ilvl : "") + (a1.lvl ? "lvl" + a1.lvl : "") + (a1.gem1lvl ? "g1lvl" + a1.gem1lvl : "") + (a1.gem2lvl ? "g2lvl" + a1.gem2lvl : "") + (a1.gem3lvl ? "g3lvl" + a1.gem3lvl : "") + (a1.artk ? "ak" + a1.artk : "") + (a1.nlc ? "nlc" + a1.nlc : "") + (a1.transmog ? "transmog" + a1.transmog : "") + (a1.tink ? "tink" + a1.tink : "") + (a1.pvp ? "pvp" : "") + (a1.bonus ? "b" + a1.bonus.join(",") : "") + (a1.gem1bonus ? "g1b" + a1.gem1bonus.join(",") : "") + (a1.gem2bonus ? "g2b" + a1.gem2bonus.join(",") : "") + (a1.gem3bonus ? "g3b" + a1.gem3bonus.join(",") : "") + (a1["crafted-stats"] ? "craftedStats" + a1["crafted-stats"].join(",") : "") + (a1.q ? "q" + a1.q : "") + (a1.level ? "level" + a1.level : "") + (a1.abil ? "abil" + a1.abil.join(",") : "") + (a1.dd ? "dd" + a1.dd : "") + (a1.ddsize ? "ddsize" + a1.ddsize : "") + (a1.diff == ai ? "diff" + a1.diff : "") + (a1.rank ? "rank" + a1.rank : "") + (a1["class"] ? "class" + a1["class"] : "") + (a0 !== ai && a1.spec ? "spec" + a1.spec : "") + (a1.rewards ? "rewards" + a1.rewards.join(":") : "") + (a1["azerite-powers"] ? "azPowers" + a1["azerite-powers"] : "") + (a1["azerite-essence-powers"] ? "aePowers" + a1["azerite-essence-powers"] : "") + (a1.nomajor ? "nomajor" : "")
        }

        this.clearTouchTooltip = function (a0) {
            if (af) {
                if (a0 !== true) {
                    af.removeAttribute("data-showing-touch-tooltip")
                }
                af.hasWHTouchTooltip = false
            }
            af = null;
            if (a0 !== true) {
                WH.qsa("[data-showing-touch-tooltip]").forEach(function (a1) {
                    delete a1.dataset.showingTouchTooltip
                })
            }
            if (WH.Tooltip.screen) {
                WH.Tooltip.screenInnerWrapper.scrollTop = 0;
                WH.Tooltip.screenInnerWrapper.scrollLeft = 0;
                WH.Tooltip.screen.style.display = "none";
                WH.Tooltip.mobileTooltipShown = false
            }
            WH.Tooltip.hide();
            $WowheadPower.setParent()
        };

        function K(a0, a2, a1) {
            if (S) {
                return false
            }
            if (!WH.User.isPremium()) {
                return false
            }
            if (WH.Tooltip.hideScreenshots) {
                return false
            }
            let entity = WH.Gatherer.get(a0, a2, a1, true);
            if (entity) {
                if (entity.screenshot && entity.screenshot.id) {
                    return [WH.getScreenshotUrl(entity.screenshot.id, "small", {imageType: entity.screenshot.imageType}), "screenshot"]
                } else {
                    if (!WH.wowheadRemote && a0 === aI.ITEM && entity.jsonequip && entity.jsonequip.displayid) {
                        let displayId = entity.jsonequip.displayid;
                        let raceMask = entity.reqrace || entity.jsonequip.races;
                        let raceId = WH.Wow.Models.getRaceIdFromMask(raceMask);
                        if ((entity.classs && entity.classs !== WH.Wow.Item.CLASS_ARMOR) || (entity.jsonequip.slotbak && !WH.Wow.Item.isArmorInvType(entity.jsonequip.slotbak))) {
                            raceId = undefined
                        }
                        let bonusIds = Listview.funcBox.getCurrentItemBonuses.call(this, entity);
                        let appearance = g_items.getAppearance(entity.id, bonusIds);
                        if (appearance && appearance[0]) {
                            displayId = appearance[0]
                        }
                        if (displayId) {
                            return [WH.Wow.Item.getThumbUrl(displayId, raceId), "screenshot"]
                        }
                    }
                }
            }
            return false
        }

        this.register = function (a7, a1, a2, a8, a6) {
            var a5 = this.getEntity(a7, a1, a2, a8);
            if (a6.hasOwnProperty("additionalIds")) {
                var a3 = a6.additionalIds;
                delete a6.additionalIds;
                if (a3.length) {
                    for (var a9 = 0; a9 < a3.length; a9++) {
                        this.register(a7, a3[a9], a2, a8, a6)
                    }
                }
            }
            if (!ac.isLoaded(a7, a2)) {
                a5.status = u;
                ac.registerCallback(a7, a2, this.register.bind(this, a7, a1, a2, a8, a6));
                return
            }
            if ((typeof a1 === "string" && (a1.indexOf("lvl") === 0 || a1.match(/[^i]lvl/))) && !ac.isLoaded(ai, a2)) {
                a5.status = u;
                ac.registerCallback(ai, a2, this.register.bind(this, a7, a1, a2, a8, a6));
                return
            }
            if (a5.timer) {
                clearTimeout(a5.timer);
                delete a5.timer
            }
            if (!WH.wowheadRemote && a6.map) {
                if (a5.data.map == null) {
                    a5.data.map = new Mapper({parent: WH.ce("div"), zoom: 3, zoomable: false, buttons: false})
                }
                a5.data.map.update(a6.map);
                delete a6.map
            }
            for (var a4 in a6) {
                if (!a6.hasOwnProperty(a4)) {
                    continue
                }
                a5.data[a4] = a6[a4]
            }
            switch (a5.status) {
                case ag:
                case u:
                case O:
                    if (a5.data[s()]) {
                        a5.status = ao
                    } else {
                        a5.status = d
                    }
            }
            if (WH.Tooltip.showingTooltip && al == a7 && E == a1 && U == a2 && ay == a8) {
                var ba = a5.data[v(m.image)];
                var bb = a5.data["image" + m.image + "_class"];
                var a0 = K(a7, a1, a2);
                if (a0) {
                    ba = a0[0];
                    bb = a0[1]
                }
                aV(a8, a5.data[s()], a5.data.icon, a5.data.map, a5.data[aZ()], a5.data[s(2)], ba, bb)
            }
            while (a5.callbacks.length) {
                a5.callbacks.shift()()
            }
        };
        this.request = function (a2, a5, a4, a0, a3) {
            if (!a3) {
                a3 = {}
            }
            if (a0 === undefined) {
                a0 = ab.getId()
            }
            if (!a4) {
                a4 = WH.getDataEnv()
            }
            var a1 = at(a2, a5, a3);
            this.getEntity(a2, a1, a4, a0);
            aB(a2, a5, a4, a0, true, a3)
        };
        this.triggerTooltip = function (a0, a1) {
            I(a0, a1 || {target: a0}, true)
        };
        this.refreshLinks = function (a1) {
            if (a1 === true || g("renameLinks") || g("colorLinks") || g("iconizeLinks")) {
                var a0 = WH.isTouch();
                let links = x();
                for (let link, i = 0; link = links[i]; i++) {
                    var a2 = link.parentNode;
                    var a3 = false;
                    while (a2 != null) {
                        let className = a2.getAttribute && a2.getAttribute("class") || "";
                        if ((" " + className + " ").replace(/[\n\t]/g, " ").indexOf(" wowhead-tooltip ") > -1) {
                            a3 = true;
                            break
                        }
                        a2 = a2.parentNode
                    }
                    if (!a3) {
                        I(link);
                        if (a0) {
                            am(link)
                        }
                    }
                }
            }
            this.hideTooltip()
        };
        this.setParent = function (a0) {
            WH.Tooltip.reset();
            WH.Tooltip.prepare(a0, WH.isElementFixedPosition(a0))
        };
        this.replaceWithTooltip = function (bb, a6, a1, a2, a8, a3, ba) {
            if (!a3) {
                a3 = {}
            }
            if (a8 === undefined) {
                a8 = ab.getId()
            }
            if (!a2) {
                a2 = WH.getDataEnv()
            }
            if (typeof bb == "string") {
                bb = document.getElementById(bb)
            }
            if (!bb) {
                return false
            }
            var a7 = at(a6, a1, a3);
            var a4 = this.getEntity(a6, a7, a2, a8);
            switch (a4.status) {
                case ao:
                    if (!bb.parentNode) {
                        return true
                    }
                    while (bb.hasChildNodes()) {
                        bb.removeChild(bb.firstChild)
                    }
                    var a0 = ["wowhead-tooltip-inline"];
                    if (a4.data.icon) {
                        a0.push("wowhead-tooltip-inline-icon")
                    }
                    an(bb, a0);
                    var a5 = a4.data[s()];
                    var a9 = function (bc) {
                        if (typeof ba === "function") {
                            bc = ba(bc)
                        }
                        WH.Tooltip.append(bb, bc, true, a4.data.icon)
                    };
                    aO(a5, a4.data[aZ()], a9, {type: a6, id: a1, dataEnv: a2, locale: a8, params: a3});
                    return true;
                case ag:
                case O:
                    a4.callbacks.push(this.replaceWithTooltip.bind(this, bb, a6, a1, a2, a8, a3, ba));
                    this.request(a6, a1, a2, a8, a3);
                    return true
            }
            return false
        };
        if (S) {
            this.set = function (a0) {
                WH.cO(aA, a0)
            };
            this.showTooltip = function (a1, a2, a0) {
                L(a1);
                aV(0, a2, a0)
            };
            this.hideTooltip = function () {
                if (typeof WH === "undefined" || typeof WH.Tooltip === "undefined" || typeof WH.Tooltip.hide !== "function") {
                    return
                }
                WH.Tooltip.hide()
            };
            this.moveTooltip = function (a0) {
                aC(a0)
            }
        } else {
            this.disableCompletion = function () {
                aU = true
            }
        }
        au()
    }
}
;
