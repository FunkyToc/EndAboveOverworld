effect give @s minecraft:slow_falling 1 0 true
effect give @s minecraft:blindness 1 0 true
playsound minecraft:item.elytra.flying ambient @s ~ ~ ~ 0.05 2
tag @s remove EAO_transition
# particules
execute if score EaoShowParticules EAO_ypos matches 1 run tag @s add EAO_particules
execute if score EaoShowParticules EAO_ypos matches 1 run schedule function eao:particules 3s append