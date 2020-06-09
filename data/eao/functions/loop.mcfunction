# players tp
execute as @a store result score @s EAO_ypos run data get entity @s Pos[1]
execute if score McVersion fktool matches ..115 run function eao:check_1.15
execute if score McVersion fktool matches 116.. run function eao:check_1.16
# items and mobs fall
execute if score EaoAffectEntities EAO_ypos matches 1 at @a as @e[distance=..128,type=!minecraft:player,nbt={OnGround:0b,Dimension:1},type=!minecraft:ender_dragon,type=!minecraft:shulker_bullet,type=!minecraft:item_frame] store result score @s EAO_ypos run data get entity @s Pos[1]
execute if score EaoAffectEntities EAO_ypos matches 1 at @a as @e[distance=..128,type=!minecraft:player,nbt={OnGround:0b,Dimension:1},type=!minecraft:ender_dragon,type=!minecraft:shulker_bullet,type=!minecraft:item_frame] if score @s EAO_ypos < EaoEndLimit EAO_ypos run function eao:go_overworld
execute if score EaoAffectEntities EAO_ypos matches 1 run scoreboard players reset @e[type=!minecraft:player] EAO_ypos
# smooth transition
execute as @a[tag=EAO_transition] at @s run function eao:transition
execute as @a[tag=EAO_particules] at @s run particle minecraft:cloud ~ ~0.1 ~ 0 0 0 0.001 1