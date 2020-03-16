# eao:loop
execute as @a store result score @s eao_ypos run data get entity @s Pos[1]
# players tp
execute as @a[nbt={Dimension:1}] if score @s eao_ypos < eaoEndLimit eao_ypos run function eao:go_overworld
execute as @a[nbt={Dimension:0}] if score @s eao_ypos > eaoOverLimit eao_ypos run function eao:go_end
# items tp
execute if score EaoAffectEntities eao_ypos matches 1 as @e[type=!minecraft:player] store result score @s eao_ypos run data get entity @s Pos[1]
execute if score EaoAffectEntities eao_ypos matches 1 as @e[type=!minecraft:player,nbt={Dimension:1}] if score @s eao_ypos < eaoEndLimit eao_ypos run function eao:go_overworld
execute if score EaoAffectEntities eao_ypos matches 1 as @e[type=!minecraft:player,nbt={Dimension:0}] if score @s eao_ypos > eaoOverLimit eao_ypos run function eao:go_end
# low config fall prevention
effect give @a[tag=eao_slowfall] minecraft:slow_falling 2 0 true
tag @a remove eao_slowfall
# reset items score
scoreboard players reset @e[type=!minecraft:player] eao_ypos