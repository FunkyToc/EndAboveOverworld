### EndAboveOverworld Datapack
###
### Developped by FunkyToc
### With love
### Original concept by franswa

## PROPERTIES
# Enable or disable datapack's options
# Thoses properties affects the entire map/server


## CONFIG

# Overworld top limit
# Define the Y position minimum limit
# Default : 275 | Minimum : 270
scoreboard players set EaoOverLimit EAO_ypos 275

# End bottom limit
# Define the Y position maximum limit
# Default : -20 | Maximum : -5
scoreboard players set EaoEndLimit EAO_ypos -20

# Show particules
# If set to 1 : clouds particules on world transition
# If set to 0 : no more particules on world transition
scoreboard players set EaoShowParticules EAO_ypos 1

# Affect entities (LAGGY FEATURE)
# If set to 1 : items and mobs will be teleported as well
# If set to 0 : items and mobs won't be teleported in the overworld (they will be killed)
scoreboard players set EaoAffectEntities EAO_ypos 0

# Custom worlds (see the "dimensions/" folder to add your own)
# If set to 1 : enable custom worlds loading
# If set to 0 : disable custom worlds loading
scoreboard players set EaoCustomWorlds EAO_ypos 0