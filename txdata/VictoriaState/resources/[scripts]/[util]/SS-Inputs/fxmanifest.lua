fx_version "bodacious"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'SIREC'
description 'SS-Inputs'
code "SSINPUTS"
version '1.3'
lua54 'yes'

client_scripts {'c/c.lua'}

server_scripts {'@SS-Core/s/server.lua'}

ui_page 'UI/UI.html'

files {
	'UI/UI.html',
	'UI/css/*.css',
	'UI/css/*.ttf',
	'UI/js/*.js',
	'UI/img/*.png',  
}
