effect give @s minecraft:slow_falling 1 0 true
effect give @s minecraft:blindness 1 0 true
playsound minecraft:item.elytra.flying ambient @s ~ ~ ~ 0.05 2
tag @s remove EAO_transition

# particules
execute if score ShowParticules EAO_Option matches 1 run tag @s add EAO_particules
execute if score ShowParticules EAO_Option matches 1 run schedule function eao:system/particules 3s append