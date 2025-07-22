author "JUMP ON studios : https://jumpon-studios.com"
documentation "https://docs.jumpon-studios.com"
version "3.2.0"
package_id "5526960"
addon_scripts {
  "kd_clothingstore_colorways",
}
dependencies_version_min "jo_libs:2.0.0"

fx_version "adamant"

rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."

game "rdr3"
lua54 "yes"

escrow_ignore {
  "shared/config.lua",
  "overwriteConfig.lua",
  "shared/lang.lua",
  "overwriteLang.lua",
}

shared_script {
  "@jo_libs/init.lua",
  "@jo_libs/modules/component/clothesList.lua",
  "shared/native.lua",
  "shared/config.lua",
  "overwriteConfig.lua",
  "shared/lang.lua",
  "overwriteLang.lua",
}

client_scripts {
  "client/natives.lua",
  "client/variables.lua",
  "client/functions.lua",
  "client/nui.lua",
  "client/client.lua",
  "client/clothesItems.lua",
  "client/cMenu.lua",
  "client/outfit.lua",
  "client/commands.lua",
  "client/exports.lua",
  "client/debug.lua",
}

server_scripts {
  "@oxmysql/lib/MySQL.lua",
  "server/clothesItems.lua",
  "server/server.lua",
  "server/exports.lua"
}

jo_libs {
  "framework-bridge",
  "version-checker",
  "table",
  "hook",
  "database",
  "blip",
  "me",
  "timeout",
  "component",
  "prompt",
  "dataview",
  "notification",
  "string"
}

ui_page "nui://jo_libs/html/dist/index.html"

dependencies {
  "oxmysql",
  "jo_libs",
}

dependency '/assetpacks'