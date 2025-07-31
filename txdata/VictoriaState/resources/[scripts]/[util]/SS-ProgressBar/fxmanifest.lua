fx_version "bodacious"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'SIREC'
description 'SS-ProgressBar'
code 'SSPROGRESSBAR'
version '1.1'
lua54 'yes'

ui_page('UI/UI.html') 

client_scripts {'c/c.lua'}

server_scripts {'@SS-Core/s/server.lua'}

files {'UI/UI.html','UI/css/*.css','UI/js/*.js'}

exports{"SetAction"}

dependencies {'SS-Core'}

escrow_ignore {'config.lua'}