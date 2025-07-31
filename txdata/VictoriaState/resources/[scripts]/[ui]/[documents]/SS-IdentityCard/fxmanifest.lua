fx_version 'cerulean'
game {'rdr3'}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'SIREC'
description 'SS-IdentityCard'
code "SSIDENTITYCARD"
version '4.4'
lua54 'yes'

ui_page 'UI/UI.html'

files {
    'UI/UI.html',
    'UI/css/*.css',
    'UI/js/*.js',
    'UI/images/*.png',
    'UI/css/*.woff'
}

client_scripts {
    'config.lua',
    'l/l.lua',
    'c/c.lua'
}

server_scripts {
    'config.lua',
    'l/l.lua',
    '@SS-Core/s/server.lua'
}

dependencies {'SS-Core'}