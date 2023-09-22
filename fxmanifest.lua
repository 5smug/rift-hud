fx_version 'adamant'
game 'gta5'

author '@5smug'
description 'This hud was inspired from an old creation (CBT Romania)'

ui_page "html/index.html"

client_scripts {
	"@vrp/client/Tunnel.lua",
	"@vrp/client/Proxy.lua",
    "config.lua",
    "client.lua"
} 

server_scripts {
	"@vrp/lib/utils.lua",
    "server.lua"
}

files {
    'html/index.html',
    'html/style.css',
    'html/reset.css',
    'html/listener.js', 
}
