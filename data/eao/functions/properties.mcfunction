### EndAboveOverworld Datapack
###
### Developped by FunkyToc
### With love
### Original concept by franswa

## PROPERTIES
# Enable or disable modules from datapack
# Thoses properties affects the entire map/server and all initialized players

## MANUAL
# Modify numerics values to adjust the datapack to your needs
# Set the scoreboard value to 1 to ENABLE
# Set the scoreboard value to 0 to DISABLE


## CONFIG

# Overworld top limit
# Define the Y position minimum limit
scoreboard players set eaoOverLimit eao_ypos 275

# End bottom limit
# Define the Y position maximum limit
scoreboard players set eaoEndLimit eao_ypos -20

# Show particules
# If set to 1 : clouds particules on world transition
# If set to 0 : no more particules on world transition
scoreboard players set EaoShowParticules eao_ypos 1

# Affect entities
# If set to 1 : items and mobs will be teleported as well
# If set to 0 : items and mobs won't be teleported in the overworld (they will die)
scoreboard players set EaoAffectEntities eao_ypos 1