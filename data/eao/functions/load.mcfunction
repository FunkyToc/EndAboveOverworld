scoreboard objectives add EAO_Option dummy {"text":"EAO_Option","color":"light_purple"}
scoreboard objectives add EAO_Ypos dummy {"text":"EAO_Ypos","color":"light_purple"}

scoreboard players reset @e[type=!minecraft:player] EAO_Ypos

function eao:properties
function eao:schedules

tellraw @a ["",{"text":"[EndAboveOverworld]","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":"Develop with love by FunkyToc"}},{"text":" enabled ! "},{"text":"More infos on "},{"text":"planetcraft.com","color":"dark_purple","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/funkytoc/submissions/data-packs/"}}]