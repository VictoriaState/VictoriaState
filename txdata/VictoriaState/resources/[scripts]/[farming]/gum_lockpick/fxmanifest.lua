fx_version 'adamant'

game 'rdr3'
lua54 'yes'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/script.js',
    'html/style.css',
    'html/reset.css',
}

client_scripts {
    'cl.lua',
    'frontend.lua',
}

server_scripts {
    'sv.lua',
}


dependency '/assetpacks'