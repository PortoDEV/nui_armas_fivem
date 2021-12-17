fx_version 'adamant'
game 'gta5'

ui_page 'nui/index.html'

client_scripts { 
    '@vrp/lib/utils.lua',
    'src/client.lua'
}

server_scripts { 
    '@vrp/lib/utils.lua',
    'src/server.lua'
}

files { 
    'nui/index.html',
    'nui/app.js',
    'nui/style.css',
    'nui/img/*.png'
}