execute as @a[nbt={Dimension:"minecraft:the_end"}] if score @s EAO_ypos < EaoEndLimit EAO_ypos at @s run function eao:go_overworld
execute as @a[nbt={Dimension:"minecraft:overworld"}] if score @s EAO_ypos > EaoOverLimit EAO_ypos at @s run function eao:go_end

# custom dimensions
execute if score EaoCustomWorlds EAO_ypos matches 1 run function eao:dimensions/list