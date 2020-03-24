scoreboard objectives add EAO_ypos dummy
function eao:properties
# tellraw
tellraw @a ["",{"text":"EndAboveOverworld","bold":true,"color":"gold"}]
tellraw @a ["",{"text":"Developped with love by "},{"text":"FunkyToc","color":"dark_purple","bold":true,"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/funkytoc/"}}]
tellraw @a ["",{"text":"More infos on "},{"text":"naturize.fr","color":"dark_purple","clickEvent":{"action":"open_url","value":"http://naturize.fr"}}]
tellraw @a ["",{"text":"Use : ","bold":true},{"text":"Fly up in the sky, down in the Void !"}]