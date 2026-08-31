fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'djfivem-305shops'
author 'DieselJones21'
description 'Ped-based shops for ox_inventory, themed for Envy Roleplay (neon cyan + chrome)'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config/config.lua',
    'config/shops.lua',
    'shared/theme.lua',
}

client_scripts {
    'client/main.lua',
}

server_scripts {
    'server/main.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/app.js',
    'html/img/envy-roleplay.webp',
    'html/img/dj-fivem-scripts.webp',
}

dependencies {
    'ox_lib',
    'ox_inventory',
}
