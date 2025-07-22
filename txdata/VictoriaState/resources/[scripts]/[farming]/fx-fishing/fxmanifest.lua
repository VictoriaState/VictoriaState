fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
description 'Fixitfy Fishing System'
author "Fixitfy Development"
version "2.7"

shared_scripts {
    "framework/*.lua",
    "config.lua"
}

client_scripts {
    "c/*.lua",
    "c/client.js"
}
server_scripts {
    "s/s.lua",
    "s/command.lua",
    "versionchecker.lua"
}

ui_page 'ui/index.html'

files {
    'ui/**/*',
}

dependencies {
    'oxmysql'
}

escrow_ignore {
    'config.lua',
    'c/opensource.lua',
    'framework/*.lua',
    "versionchecker.lua"
}

lua54 'yes'
dependency '/assetpacks'