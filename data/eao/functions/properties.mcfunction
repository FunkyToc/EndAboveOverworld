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
scoreboard players set OverLimit EAO_Option 275

# End bottom limit
# Define the Y position maximum limit
# Default : -20 | Maximum : -5
scoreboard players set EndLimit EAO_Option -20

# Show particules
# If set to 1 : clouds particules on world transition
# If set to 0 : no more particules on world transition
scoreboard players set ShowParticules EAO_Option 1

# Affect entities (LAGGY FEATURE)
# Only End-to-Over, in a 128 blocks range of every players in the End
# If set to 1 : items and mobs will be teleported as well
# If set to 0 : items and mobs won't be teleported in the overworld (they will be killed)
scoreboard players set AffectEntities EAO_Option 1

# Custom worlds (see the "dimensions/" folder to add your own)
# If set to 1 : enable custom worlds loading
# If set to 0 : disable custom worlds loading
scoreboard players set CustomWorlds EAO_Option 0