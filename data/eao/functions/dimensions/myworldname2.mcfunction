# Your World 2
# 
# MANUAL
# 1. Set the scoreboard "Myworld2TopLimit" and "Myworld2BottomLimit" to the desire Y position
# 2. Replace in this file, the word "namespace" by your real world Namespace
# 3. Replace in this file, the word "thisworldname" by your real WorldName
# 4. Replace in this file, the word "worldname_to_go_up" by the world you want to go if you are Up in the sky
# 5. Replace in this file, the word "worldname_to_go_down" by the world you want to go if you are Deep in the ground
# 6. Use /reload in game

# Top limit
scoreboard players set Myworld2TopLimit EAO_ypos 256
# If above the top limit, the player will go in...
execute as @a[nbt={Dimension:"namespace:thisworldname"}] if score @s EAO_ypos < MyWorldBottomLimit EAO_ypos at @s in namespace:worldname_to_go_up run tp @s ~ -1 ~

# Bottom limit
scoreboard players set Myworld2BottomLimit EAO_ypos -1
# If under the bottom limit, the player will go in...
execute as @a[nbt={Dimension:"namespace:thisworldname"}] if score @s EAO_ypos > MyWorldTopLimit EAO_ypos at @s in namespace:worldname_to_go_down run tp @s ~ 256 ~
