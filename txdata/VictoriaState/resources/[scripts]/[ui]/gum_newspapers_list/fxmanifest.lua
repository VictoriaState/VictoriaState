fx_version 'adamant'
lua54 'yes'

game 'rdr3'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

files {
  'config.lua'
}

client_scripts {
  'config.lua',
  'client.lua',
}

server_scripts {
  'config.lua',
  'server.lua',
}
ui_page 'html/index.html'

files {
    'html/index.js',
    'html/index.css',
    'html/index.html',
    'html/crock.ttf',
}
escrow_ignore {
	'config.lua', 
}
dependency '/assetpacks'