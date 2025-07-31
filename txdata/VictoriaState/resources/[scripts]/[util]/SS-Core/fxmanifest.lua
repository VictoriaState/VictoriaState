fx_version "cerulean"
game "rdr3"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'SIREC'
description 'SS-Core'
code 'SSCORE'
version '2.3'
framework 'vorp' -- USE vorp/rsg/rsgv1/redemrp/tpz !
lua54 'yes'

ui_page 'UI/UI.html'

files {
	'UI/UI.html',
	'UI/css/*.css',
	'UI/js/*.js',
	'UI/img/*.png',
	'UI/img/*.jpg',
	'UI/css/*.otf',
    "s/server.lua",
}

client_scripts {
	'config.lua',
	'c/c.lua',
}

server_scripts {
	'config.lua',
	'license.lua',
	's/s.lua',
	's/functions.lua',
}