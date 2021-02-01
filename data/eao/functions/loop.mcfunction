# players tp
execute as @a store result score @s EAO_Ypos run data get entity @s Pos[1]
execute if score McVersion fktool matches ..11400 run function eao:system/check_players_1.13
execute if score McVersion fktool matches 11500.. run function eao:system/check_players_1.15

# items and mobs fall
execute if score AffectEntities EAO_Option matches 1 if score McVersion fktool matches ..11400 run function eao:system/check_entities_1.13
execute if score AffectEntities EAO_Option matches 1 if score McVersion fktool matches 11500.. run function eao:system/check_entities_1.15

# smooth transition
execute as @a[tag=EAO_transition] at @s run function eao:system/transition
execute as @a[tag=EAO_particules] at @s run particle minecraft:cloud ~ ~0.1 ~ 0 0 0 0.001 1