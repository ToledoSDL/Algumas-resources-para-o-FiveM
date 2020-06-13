resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
fx_version "adamant"
game "gta5"

ui_page "nui/ui.html"

files {
    "nui/*.html",
    "nui/*.css",
    "nui/*.js",
    "nui/font/*.ttf",
    "nui/font/*.ttf"
}

client_scripts {
    "cfg/config.lua",
    "@vrp/lib/utils.lua",
    "client.lua"
}

server_script {
    "@vrp/lib/utils.lua",
    "cfg/config.lua",
    "server.lua"
}
