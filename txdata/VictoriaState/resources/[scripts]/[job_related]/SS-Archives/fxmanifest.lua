fx_version "adamant"
game "rdr3"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'SIREC'
description 'SS-Archives'
code "SSARCHIVES"
version '3.6'
lua54 'yes'

client_scripts {
    '@PolyZone/client.lua',
	'config.lua',
	'l/l.lua',
	'c/c.lua',
}

server_scripts {
	'config.lua',
	'l/l.lua',
	'@SS-Core/s/server.lua',
}

ui_page 'UI/UI.html'

files {
	'UI/UI.html',
	'UI/css/*.css',
	'UI/js/*.js',
	'UI/css/*.woff',
	'UI/css/*.ttf',
	'UI/images/*.png',
	'*.js'
}