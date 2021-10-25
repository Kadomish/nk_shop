fx_version 'adamant'

game 'gta5'

client_scripts {
    'dependencies/menu.lua',
    'config.lua',
	'client/cl_shop.lua',
    'client/cl_shopt.lua'
}

server_scripts {
      'sv_shop.lua',
}

ui_page 'html/ui.html'

files {
    'html/ui.html',
    'html/img/image.png',
    'html/css/app.css',
    'html/scripts/app.js'
}