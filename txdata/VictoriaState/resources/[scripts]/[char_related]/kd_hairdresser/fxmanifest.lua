author "JUMP ON studios : https://jumpon-studios.com"
documentation "https://docs.jumpon-studios.com"
version "1.7.0"
package_id "5394069"
addon_scripts {
  "kd_hairdresser_coloring",
  "kd_hairdresser_makeup"
}
dependencies_version_min "jo_libs:2.0.0"

fx_version "adamant"

rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."

game "rdr3"
lua54 "yes"

escrow_ignore {
  "shared/config.lua",
  "shared/lang.lua",
  "overwriteConfig.lua",
  "overwriteLang.lua",
  "stream/*"
}

files {
  "stream/bla_barber_int.ytyp"
}

data_file "DLC_ITYP_REQUEST" "stream/bla_barber_int.ytyp"


shared_script {
  "@jo_libs/init.lua",
  "shared/native.lua",
  "shared/config.lua",
  "shared/lang.lua",
  "overwriteConfig.lua",
  "overwriteLang.lua",
}

client_scripts {
  "client/natives.lua",
  "client/variables.lua",
  "client/functions.lua",
  "client/animations.lua",
  "client/camera.lua",
  "client/menu.lua",
  "client/nui.lua",
  "client/client.lua",
  "client/cmenu.lua",
  "client/texturing.lua",
  "client/exports.lua"
}

server_scripts {
  "@oxmysql/lib/MySQL.lua",
  "server/server.lua"
}

ui_page "nui://jo_libs/nui/index.html"

jo_libs {
  "callback",
  "utils",
  "animation",
  "blip",
  "component",
  "database",
  "dataview",
  "framework-bridge",
  "hook",
  "me",
  "menu",
  "notification",
  "ped-texture",
  "prompt",
  "skin",
  "screen",
  "table",
  "timeout",
  "version-checker",
  "light"
}

dependencies {
  "jo_libs"
}

dependency '/assetpacks'