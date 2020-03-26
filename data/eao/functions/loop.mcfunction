# players tp
execute as @a store result score @s EAO_ypos run data get entity @s Pos[1]
execute as @a[nbt={Dimension:1}] if score @s EAO_ypos < EaoEndLimit EAO_ypos run function eao:go_overworld
execute as @a[nbt={Dimension:0}] if score @s EAO_ypos > EaoOverLimit EAO_ypos run function eao:go_end
# items tp
execute if score EaoAffectEntities EAO_ypos matches 1 as @e[type=!minecraft:player] store result score @s EAO_ypos run data get entity @s Pos[1]
execute if score EaoAffectEntities EAO_ypos matches 1 as @e[type=!minecraft:player,nbt={Dimension:1}] if score @s EAO_ypos < EaoEndLimit EAO_ypos run function eao:go_overworld
execute if score EaoAffectEntities EAO_ypos matches 1 as @e[type=!minecraft:player,nbt={Dimension:0}] if score @s EAO_ypos > EaoOverLimit EAO_ypos run function eao:go_end
# smooth transition
execute as @a[tag=EAO_transition] at @s run function eao:transition
execute as @a[tag=EAO_particules] at @s run particle minecraft:cloud ~ ~0.1 ~ 0 0 0 0.001 1 normal
# reset items score
scoreboard players reset @e[type=!minecraft:player] EAO_ypos