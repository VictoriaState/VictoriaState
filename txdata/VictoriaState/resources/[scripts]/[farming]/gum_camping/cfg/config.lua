Config = {}
--Protect for scroll if player place props
Config.IncreaseSpeedControl = {`INPUT_CREATOR_LT`, `INPUT_PREV_WEAPON`}
Config.DecreaseSpeedControl = {`INPUT_CREATOR_RT`, `INPUT_NEXT_WEAPON`}


Config.discordHook = true
Config.webhookLink = ""
Config.webhookColor = 16755884
Config.webhookLanguage = {
    [1] = "Create new camp : ",
    [2] = "Removed : ",
    [3] = "Coords : ",
    [4] = "Add new prop to camp : ",
    [5] = "Fix his camp : ",
    [6] = "Switch clothe",  
}


Config.RenderCampDistance = 100.0
Config.FallUnderMap = false--If you fall under map while you building, enbale it. Not all framework was broken. :)

Config.BannedCity = false
Config.BannedTowns = {'Annesburg','SaintDenis', 'Armadillo', 'Blackwater', 'BeechersHope', 'Breaithwaite', 'Butcher', 'Caliga', 'Cornwall', 'Emerald', 'Lagras', 'Manzanita', 'Rhodes', 'Siska', 'StDenis', 'Strawberry', 'Tumbleweed', 'Valentine', 'Vanhorn', 'Wallace', 'Wapiti', 'AguasducesFarm', 'AguasdulcesRuins', 'AguasdulcesVilla', 'Manico'}
Config.BannedText = "You cant build your camp in city"

Config.Permit_Item = false
Config.Permit_Item_Id = "MDT_Book"

Config.StealtStorage = true
Config.BlockIfOffline = true
Config.LockcpickItem = "Lockpick"

Config.MultipleCamps = true--If player can have more camps (true block multiplecamp)
Config.RadiusForCamp = 80.0--Range for render camp, or build camp 

Config.Gum_Notify_Old = false
Config.FirstName = ""--If you use old Notify you must add Image path
Config.SecondName = ""--If you use old Notify fro mme you must add Image Name

Config.Gum_Notify_NUI = true
Config.FarmingImage = "camping"

Config.Camp_Load_Cmd = "camp_load"
Config.Camp_Manage = "camp"

Config.CounterFix = 7--For every 10% for fix is Doubled fixing like if you have 20% you must fix 80% thats 8* Fix state items
--Warning counter is from 0 like 0,7,14,21,28,35,42,49,56,63,70,77,84,91,98
Config.FixItems = {
    [1] = {"Wood", 3, "Dřevo"},
    [2] = {"Big_Leather", 3, "Kůže"},
    [3] = {"Stone", 3, "Kámen"},
    [4] = {"Small_Leather", 3, "Malá kůže"},
}

Config.ClotheEvent = "gum_clothing:checkOwnedClothe"--Client to client event

Config.PlaceMoreDown = {
    s_wap_rainsfalls = 0.70,
    s_tent_maropen01b = 0.20,
}
--------Prop                   Fired prop            ID           For now nothing        Name    Time Range for clear grass etc
Config.Fires = {
    p_campfire_win2_01x = {"p_campfirefresh01x", "Campfire_1", "Wood_Branch", "Malé ohniště", 1, 1.5},
    p_campfire03x_nofire = {"p_campfire03x", "Campfire_2", "Wood", "Velké ohniště", 5, 1.5},
    p_campfirecombined01x_off = {"p_campfirecombined01x", "Campfire_3", "Wood", "Kotlík", 5, 1.5},
    s_splitfirelog01x_nofire = {"s_splitfirelog01x", "Campfire_4", "Wood", "Hořící poleno", 5, 1.5},
}

Config.SpawnProps = {
    ---PROP                                  ITEM ID (usable) label, CleanGlass, Clothes
    p_chair_crate02x =                      {"Camping_1", "Dřevěná bedna", 3, false},
    s_tent_maropen01b =                     {"Camping_2", "Normální stan", 5, true},
    mp005_s_posse_tent_bountyhunter07x =    {"Camping_3", "Lovecký stan", 10, true},
    p_hitchingpost01x =                     {"Camping_4", "Přivazovácí místo", 2, false},
    p_table11x =                            {"Camping_5", "Dřevěný stůl", 3, false},
    p_ambchair01x =                         {"Camping_6", "Dřevěná židle", 3, false},
    p_bench03x =                            {"Camping_7", "Dřevěná lavice", 3, false},
    p_lantern09xint =                       {"Camping_8", "Lucerna", 3, false},
    p_cot01x =                              {"Camping_9", "Lůžko", 3, false},
    p_tentmountainmen02x =                  {"Camping_10", "Velký stan", 4, true},
    p_benchwork01x =                        {"Camping_11", "Stůl na výrobu nábojů", 5, false},
    p_bespoketable01x =                     {"Camping_12", "Dřevěný stůl 2", 6, false},
    p_stoolfolding01x =                     {"Camping_13", "Stolička", 7, false},
    p_target01x =                           {"Camping_14", "Terč", 1, false},
    p_chairfolding02x =                     {"Camping_15", "Dřevěná židle 2", 2, false},
    p_chair09x =                            {"Camping_16", "Dřevěná židle 3", 2, false},
    s_wap_rainsfalls =                      {"Camping_17", "Týpí", 5, true},

    s_wagoncaravan01a =                     {"Camping_19", "Caravan", 5, false},
    p_basinwater01x =                       {"Camping_20", "Nádoba s Vodou", 5, false},
    p_trunk05x  =                           {"Camping_21", "Truhla", 5, false},
    p_dirttub01x   =                        {"Camping_22", "Nádoba se špinavou vodou", 5, false},
    p_basketrope01x  =                      {"Camping_23", "Nádoba s lanem", 5, false},
    p_waterbucket01x  =                     {"Camping_24", "Kýbl s vodou", 5, false},
    p_sandbagcover01x  =                    {"Camping_25", "Pytle s obilím 1", 5, false},
    p_floursackstack02x =                   {"Camping_26", "Pytle s obilím 2", 5, false},
    p_barrel02x      =                      {"Camping_27", "Barel", 5, false},
    p_barricadewood_sml01x  =               {"Camping_28", "Dřevěná ohrádka", 5, false},
    p_crate15x     =                        {"Camping_29", "Dřevěná krabice", 5, false},
	
	p_spookynative04x =                         {"Camping_30", "Totem 1", 5, false},
    p_spookynative07x =                         {"Camping_31", "Totem 2", 5, false},
    p_staffindian03x  =                         {"Camping_32", "Totem 3", 5, false},
    p_spookynative05x   =                       {"Camping_33", "Totem 4", 5, false},
    p_spookynative12x   =                       {"Camping_34", "Totem 5", 5, false},
	p_waterpump01x      =                       {"Camping_35", "Pumpa",30, false},
	p_bedindian02x   =                          {"Camping_36", "Postel Malá", 5, false},
	p_graveindian01x   =                        {"Camping_37", "Postel Velká", 5, false},
	p_spookynative02x   =                       {"Camping_38", "Kameny s Lebkou", 5, false},
    s_confedtarget     =                        {"Camping_39", "Panak ze sena", 10, false, 1.5},
    p_fence06ax     =                           {"Camping_40", "Plot 1", 5, false, 1.5},
    p_fence10cx     =                           {"Camping_41", "Plot 2", 5, false, 1.5},
    p_fence_wall01x     =                       {"Camping_42", "Plot 3", 5, false, 1.5},
    p_fence_wall02x     =                       {"Camping_43", "Plot 4", 5, false, 1.5},
    mp005_p_mp_bountyboard02x   =               {"Camping_44", "Tabule", 5, false},
    gatlingMaxim02     =                        {"Camping_45", "Gun", 20, false, 1.5},
    mp001_p_mp_jump_haybaleshort01     =        {"Camping_46", "Prekažka", 10, false, 1.5},
    mp001_p_mp_jump_fenceshort02     =          {"Camping_47", "Prekažka 2", 10, false, 1.5},
    mp001_p_mp_jump_sackshort01     =           {"Camping_48", "Prekažká 3", 10, false, 1.5},
    mp001_p_mp_jump_barrelshort01     =         {"Camping_49", "Prekažka 4", 10, false, 1.5},
    mp001_p_mp_jump_blocksmall01     =          {"Camping_50", "Prekažka 5", 10, false, 1.5},
    mp001_p_mp_jump_dock01     =                {"Camping_51", "Prekažka 6", 10, false, 1.5},
    mp001_p_jumphurdles01x     =                {"Camping_52", "Prekažka 7", 10, false, 1.5},
    p_lampstreet01x     =                       {"Camping_53", "Lampa", 10, false, 1.5},
    p_lightpost01x    =                         {"Camping_54", "Lampa2", 10, false, 1.5},
    mp004_p_mptenttanner01x    =                {"Camping_55", "altán", 10, false, 1.5},
    p_babystroller    =                         {"Camping_56", "Kocar", 5, false, 1.5},
    p_grindingwheel01x =                        {"Camping_57", "Brusný Kámen", 5, false},
    p_coalbin01x =                              {"Camping_58", "Nádoba na Uhlí", 5, false},
    p_anvil01x  =                               {"Camping_59", "Kovadlina", 5, false},
    p_stump  =                                  {"Camping_60", "Pařez pod kovadlinu", 5, false},
    p_forge01x  =                               {"Camping_61", "Výheň", 5, false},
    p_sawhorse04x =                             {"Camping_62", "Stůl na kládu", 5, false},
    mp001_p_mp_kettle03_fire01x  =              {"Camping_63", "Kotlík s poleny", 5, false},
    mp006_p_xmastree01x  =                      {"Camping_64", "Stromek", 5, false},
    mp006_s_markercandycane  =                  {"Camping_65", "Vanocni lizatko", 5, false},
    mp006_s_markergingerbread  =                {"Camping_66", "vanocni pernicek", 5, false},
    mp006_s_lootablechest03x =                  {"Camping_67", "Darek", 5, false},
    mp006_p_wreath01x  =                        {"Camping_68", "Vanocni Venec", 5, false},
    p_goldcradlestand01x =                      {"Camping_69", "Ryzovaci Velke Sito", 20, false},
    p_gangtentlemoyne01x  =                     {"Camping_70", "Stan s Plentou", 5, false},
    p_ambtenthide01b  =                         {"Camping_71", "Kožešinový Stan Malý", 5, false},
    s_tentbison01x  =                           {"Camping_72", "Kožešinový Stan Velký", 5, false},
    mp001_p_mp_finishline_bonfire01x  =         {"Camping_73", "Táborák", 5, false},
    p_cookfirestructure02x  =                   {"Camping_74", "Indiánský Přístřešek", 5, false},
    p_indianbackrest01x  =                      {"Camping_75", "Odpočívadlo", 5, false},
    p_bench_log05x  =                           {"Camping_76", "Velká Kláda na sezení", 5, false},
    p_bench_log03x  =                           {"Camping_77", "Malá Kláda na sezení", 5, false},
    p_bench_log04x  =                           {"Camping_78", "Střední Kláda na sezení", 5, false},
    p_skullpost02x  =                           {"Camping_79", "Kříž s lebkami", 5, false},
    p_spookyskulls07bx  =                       {"Camping_80", "Hrot s Lebkami", 5, false},
    p_spookyskulls07ax  =                       {"Camping_81", "Hrot s Lebkou", 5, false},
    p_spookyskulls04x  =                        {"Camping_82", "Malý Totem s lebkou", 5, false},
    p_indianartifact01x  =                      {"Camping_83", "Kamenný Tomahawk", 5, false},
    p_indiandream01x_a  =                       {"Camping_84", "Lapač snů", 5, false},
    p_spookynative01x  =                        {"Camping_85", "Hrot s Péřím", 5, false},
    p_spookynative09x  =                        {"Camping_86", "závěsné chřastidlo", 5, false},
    p_leantopine01x  =                          {"Camping_87", "Přístřešek z větví", 5, false},
    p_indiandream01x  =                         {"Camping_88", "Lapač snů s korálky", 5, false},
    p_indianfan01x  =                           {"Camping_89", "Dekorace s Peřím", 5, false},
    p_dryingmeat01x  =                          {"Camping_90", "Sušič Masa", 5, false},
    p_gourdwater01x  =                          {"Camping_91", "Nádoba na vodu", 5, false},
    p_group_skull01x  =                         {"Camping_92", "Totem s lebkami", 5, false},
    p_spookyskulls02x_a  =                      {"Camping_93", "Kopí s lebkami a hroty", 5, false},
    mp005_p_mp_hideframe02x  =                  {"Camping_94", "Koželuh", 5, false},
    p_ambtentswamp01x  =                        {"Camping_95", "Stan z větví", 5, false},
    p_ambtentmulch01b  =                        {"Camping_96", "Stan z listí", 5, false},
    p_hangingbones01x  =                        {"Camping_97", "Lapač snů z lebkami", 5, false},
    p_target06x  =                              {"Camping_98", "Závěsný Totem", 5, false},
    p_bearskin01x  =                            {"Camping_99", "Medvědí kožešina", 5, false},
    p_breadoven01x =                            {"Camping_100", "Tavici Pec", 5, false}, 
    p_bedrollopen03x     =                      {"Camping_101", "Spacák", 2, false},
    p_ambtentdebris01x     =                    {"Camping_102", "Kryt z odpadku", 10, false},
    p_horsehitchnbd01x   =                      {"Camping_103", "kovové uvazovátko", 10, false},
    p_cabinet13x   =                            {"Camping_104", "Podstavec 1", 10, false},
    p_pedestalstand01x   =                      {"Camping_105", "Podstavec 2", 10, false},
    p_cartvend02x   =                           {"Camping_120", "Obchodni vozik", 10, false},
    tippi1   =                           {"Camping_121", "Týpí 1", 10, true},
    tippi2   =                           {"Camping_122", "Týpí 2", 10, true},
    p_basketindian01x   =                           {"Camping_123", "Košík 1", 10, true},
    p_basketindian02x   =                           {"Camping_124", "Košík 2", 10, true},
    p_potteryindian05x   =                           {"Camping_125", "Nádoba 1", 10, true},
    p_potteryindian08x   =                           {"Camping_126", "Nádoba 2", 10, true},
    p_potteryindian07x   =                           {"Camping_127", "Nádoba 3", 10, true},
    p_bowlna01x   =                           {"Camping_128", "Nádoba 4", 10, true},
    s_clothpile01x   =                           {"Camping_129", "Hromádka látky", 10, true},
    s_cvan_hideroll01   =                           {"Camping_130", "Srolovaná Kožešina", 10, true},
    p_skullcattle03x   =                           {"Camping_131", "Zvířecí Lebka", 10, true},

    --PROPY KNIHY
    p_coffin04x_sea = {"Camping_18", "Rakev", 1.00, false},
}


Config.Storage_Box = {
    ["p_chair_crate02x"] = 50,
    ["p_storagebox01x"] = 100,
}

Config.Max_Items_In_Storage = 50
Config.MaxProps = 500
Config.Language = {
    [1] = {text = "Camp",},
    [2] = {text = "Builded props",},
    [3] = {text = "Keye managment",},
    [4] = {text = "State :",},
    [5] = {text = "Show build circle",},
    [6] = {text = "Give keye",},
    [7] = {text = "Your camp",},
    [8] = {text = "Shared camp",},
    [9] = {text = "Clothing",},
    [10] = {text = "Storage box",},
    [11] = {text = "Fire manipulation",},
    [13] = {text = "Prepare to build",},
    [14] = {text = "Locked chest",},
    [15] = {text = "You dont need fix",},
    [16] = {text = "You want fix your camp?",},
    [17] = {text = "Yes",},
    [18] = {text = "No",},
    [19] = {text = "What dou you want with this outfit?",},
    [20] = {text = "Select",},
    [21] = {text = "Delete",},
    [22] = {text = "Place",},
    [23] = {text = "Pick up",},
    [24] = {text = "Interact",},
    [25] = {text = "Open",},
    [26] = {text = "Clothing",},
    [27] = {text = "Cook",},
    [28] = {text = "Interact",},
    [29] = {text = "Lockpick",},
    [30] = {text = "You dont have permit item for build camp.",},
    [31] = {text = "You cant lockpick this chest.",},
    [32] = {text = "You dont have lockpick.",},
    [33] = {text = "you cant build near other camp. Go away.",},
    [34] = {text = "You need :",},
    [35] = {text = "You need : ",},
    [80] = {text = "You can build only 1 storage box at camp. ",},
    [81] = {text = "You cant build in city. ",},
    [82] = {text = "You can have only 1 camp.",},
    [83] = {text = "You are not in your camp, or you dont have camp.",},
    [84] = {text = "This player have keyes",},
    [85] = {text = "You have already reached the prop limit",},
    [86] = {text = "Maximum",},
    [87] = {text = "Do you want destroy your camp?"},
}