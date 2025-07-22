fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game "rdr3"

author 'DrShwaggins | DrShwaggîns#8832'
description 'dl-advancedbilling'

lua54 'yes'

client_scripts {
	'config.lua',
	'client/client.lua',
}


exports{
	"exportOpenMenuClient",
}


server_scripts {
	'config.lua',
	'server/server.lua',
	'server/logging.lua'
}


server_exports {
	"exportOpenMenuServer",
}


files {
  'html/*',
	'html/fonts/*'
}

ui_page 'html/index.html'


escrow_ignore {
  'config.lua',
	'mybills.sql',
	'README.md'
}

dependency '/assetpacks'