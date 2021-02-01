execute as @a[predicate=fktool:location/in_end] if score @s EAO_Ypos < EndLimit EAO_Option at @s run function eao:system/go_overworld
execute as @a[predicate=fktool:location/in_over] if score @s EAO_Ypos > OverLimit EAO_Option at @s run function eao:system/go_end

# custom dimensions
execute if score McVersion fktool matches 11602.. if score CustomWorlds EAO_Option matches 1 run function eao:dimensions/list