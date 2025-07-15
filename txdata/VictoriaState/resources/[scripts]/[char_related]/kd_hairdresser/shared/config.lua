-------------------------------
-- DOCUMENTATION : https://docs.jumpon-studios.com/
--------------------------------

-------------------------------------------
-- DON'T EDIT THIS FILE
-- TO OVERWRITE CONFIG VALUE, USE overwriteConfig.lua file instead
-------------------------------------------

Config = {}
Config.debug = false
Config.commandName = "hairdresser" --use false to disable it
Config.audioVolume = 0.5           --value between 0.0 and 1.0
Config.displayBlips = true
Config.displayPromptDistance = 2.0
Config.spawnChairDistance = 100.0
Config.canColorEyebrow = true --if false, the hair color is used for eyebrow

Config.oldVORPChar = false    --(Only for VORP users) to use the C# version of VORP Character

Config.prices = {             --Use false to turn off the submenu
  hair = { money = 3.75, gold = 1 },
  beards_complete = 2.5,
  hair_accessories = 1.0,
  teeth = 5,
  eyebrow = { money = 3.75, gold = 1 },
}

Config.shops = {
  --blackwater
  {
    location = vector4(-815.33, -1368.75, 42.75, 270),
    model = "p_barberchair02x", --uncomment to spawn the chair
    blip = true,
    needExtraLight = true
  },
  {
    location = vector4(-815.33, -1367.05, 42.75, 270),
    model = "p_barberchair02x", --uncomment to spawn the chair
    blip = false,
    needExtraLight = true
  },
  --valentine
  {
    location = vector3(-306.2, 814.2, 118.9),
    blip = true,
    needExtraLight = true
  },
  --saint denis
  {
    location = vector3(2655.4, -1179.9, 53.2),
    blip = true,
    needExtraLight = true
  },
}

Config.keys = {
  enter = "INPUT_FRONTEND_RB",
  pomade = "INPUT_SHOP_SPECIAL",
  hat = "INPUT_INTERACT_OPTION2"
}

Config.KeysDisabled = {
  `INPUT_MOVE_UD`,
  `INPUT_MOVE_LR`,
  `INPUT_MOVE_LB`,
  `INPUT_COVER`,
  `INPUT_ATTACK`,
  `INPUT_NEXT_WEAPON`,
  `INPUT_PREV_WEAPON`,
  `INPUT_OPEN_WHEEL_MENU`,
  `INPUT_TOGGLE_HOLSTER`,
  `INPUT_TWIRL_PISTOL`,
}
