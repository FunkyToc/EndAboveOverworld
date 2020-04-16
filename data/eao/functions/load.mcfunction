scoreboard objectives add EAO_ypos dummy {"text":"EAO_ypos","color":"light_purple"}
scoreboard players reset @e[type=!minecraft:player] EAO_ypos
function eao:properties
tellraw @a ["",{"text":"EndAboveOverworld","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":"Develop with love by FunkyToc"}},{"text":" enabled ! "},{"text":"More infos on "},{"text":"planetcraft.com","color":"dark_purple","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/funkytoc/submissions/data-packs/"}}]