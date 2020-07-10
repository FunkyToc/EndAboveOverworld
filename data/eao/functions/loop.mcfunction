# players tp
execute as @a store result score @s EAO_ypos run data get entity @s Pos[1]
execute if score McVersion fktool matches ..11400 run function eao:check_players_1.14
execute if score McVersion fktool matches 11500.. run function eao:check_players_1.15
# items and mobs fall
execute if score McVersion fktool matches ..11400 if score EaoAffectEntities EAO_ypos matches 1 run function eao:check_entities_1.14
execute if score McVersion fktool matches 11500.. if score EaoAffectEntities EAO_ypos matches 1 run function eao:check_entities_1.15
# smooth transition
execute as @a[tag=EAO_transition] at @s run function eao:transition
execute as @a[tag=EAO_particules] at @s run particle minecraft:cloud ~ ~0.1 ~ 0 0 0 0.001 1