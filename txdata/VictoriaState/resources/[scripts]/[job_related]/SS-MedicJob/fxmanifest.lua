fx_version "bodacious"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'BLUEYES'
description 'SS-MedicJob'
code 'SSMEDICJOB'
version '2.4'
lua54 'yes'

client_scripts {'config.lua', 'functions.lua', 'c/c.lua'}

server_scripts {'config.lua', 'functions.lua', '@SS-Core/s/server.lua'}

ui_page "UI/UI.html"

files {"UI/js/*.js", "UI/UI.html", "UI/css/*.css", "UI/images/*.png", "UI/css/*.woff"}

escrow_ignore {'config.lua', 'functions.lua'}