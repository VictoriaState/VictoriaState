fx_version "cerulean"
game "rdr3"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'BLUEYES'
description 'SS-PoliceJob'
code 'SSPOLICEJOB'
version '3.1'
lua54 'yes'

client_scripts {'config.lua', 'functions.lua', 'c/c.lua'}

server_scripts {'config.lua', 'functions.lua', 's/s.lua'}

dependencies {
    'SS-Core',
}