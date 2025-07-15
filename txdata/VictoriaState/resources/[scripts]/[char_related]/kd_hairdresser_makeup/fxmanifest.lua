author "JUMP ON studios : https://jumpon-studios.com"
documentation "https://docs.jumpon-studios.com"
version "1.2.0"
package_id "6299291"
dependencies_version_min "kd_hairdresser:1.7.0"

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
  "shared/config.lua",
  "overwriteConfig.lua",
  "shared/lang.lua",
  "overwriteLang.lua",
}

jo_libs {
  "notification",
  "version-checker",
  "ped-textures",
  "table",
  "me",
  "utils",
  "framework-bridge",
  "database",
  "callback",
  "menu",
  "waiter"
}

ui_page "nui://jo_libs/nui/index.html"

client_scripts {
  "client/_variables.lua",
  "client/menu.lua",
  "client/actions.lua",
  "client/filters.lua",
  "client/functions.lua",
  "client/main.lua",
}

server_scripts {
  "@oxmysql/lib/MySQL.lua",
  "server/server.lua"
}

dependencies {
  "kd_hairdresser",
  "jo_libs"
}

dependency '/assetpacks'