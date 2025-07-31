fx_version "adamant"
game "rdr3"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'BLUEYES'
description 'SS-MedicArchives'
code "SSMEDICARCHIVES"
version '1.1'
lua54 'yes'

client_scripts {'config.lua', 'c/c.lua'}

server_scripts {'config.lua', '@SS-Core/s/server.lua'}

ui_page 'UI/UI.html'

files {'UI/UI.html', 'UI/css/*.css', 'UI/js/*.js', 'UI/css/*.woff', 'UI/css/*.ttf', 'UI/images/*.png', '*.js'}

escrow_ignore {'config.lua'}