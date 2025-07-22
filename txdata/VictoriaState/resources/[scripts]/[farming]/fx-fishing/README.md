# FX-fishing in Lua System for VORPCore framework

* Please join our discord about script development. You will automatically get a Discord Role.
* https://discord.gg/PjEu6tgAkU

## Setup
* Download the lastest version of FX-fishing

### After completing the installation
* Copy and paste ```fx-fishing``` folder to ```resources/fx-fishing```
* Add ```ensure fx-fishing``` to your ```resource.cfg``` file
* To change the language go to ```resources/fx-fishing/config``` and change the default language.


### Fish Event
* If you type fishEvent 2 in the server command line, players will catch 2x fish and earn 2x exp. You can make the number 2 3-4-5 if you want. 
* Config line 448 command fishEvent
### İmage Example
- https://cdn.discordapp.com/attachments/1106260289067950111/1159866786922106890/Screenshot_64.png
- https://cdn.discordapp.com/attachments/1106260289067950111/1159866787228295218/Screenshot_62.png


### FX-Fishing

### Fishingrod Upgrade Info
- As you fish, the fishing rod you fish with gains a special exp for each fish
- The exp in the description of the fishing rod you want to upgrade must be full, for example 1000/1000.
- You must have one of the items in Config.UpgradeStones in config.lua. These items have a unique chance probability. You can sell them in the shop.
- To upgrade your fishing rod you must meet the level requirement in Config.FishingRodUpgradeItems. for example to upgrade a level 1 fishing rod to level 2 you need 1x whitepearl and 1x redpearl. You can sell these pearls in the shop or get them by fishing.
- To upgrade your fishing rod, first go to the blacksmith and talk to him.
- First he will ask you to use the upgrade item, so use an item from Config.UpgradeStones in your inventory. Then he will ask you to use the fishing rod you want to upgrade, use it in your inventory. The upgrade menu will open and you will see the necessary materials there. If you are lucky you will successfully upgrade