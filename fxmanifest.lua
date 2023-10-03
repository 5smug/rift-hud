fx_version 'adamant'
game 'gta5'

author 'https://steamcommunity.com/id/5smug/ || https://github.com/5smug'
description "A FiveM hud that shows a player's pockey money and bitcoins.."

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
