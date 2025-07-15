author "JUMP ON studios : http://jumpon-studios.com"
documentation "https://docs.jumpon-studios.com"
version "1.3.0"
package_id "6197469"
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
  "shared/native.lua",
  "shared/config.lua",
  "overwriteConfig.lua",
  "shared/lang.lua",
  "overwriteLang.lua",
}

jo_libs {
  "notification",
  "version-checker",
  "table",
  "hook",
  "me",
  "component",
  "menu",
}

ui_page "nui://jo_libs/nui/index.html"

client_scripts {
  "client/variables.lua",
  "client/functions.lua",
  "client/actions.lua",
  "client/main.lua",
}


dependencies {
  "kd_hairdresser",
  "jo_libs"
}

dependency '/assetpacks'