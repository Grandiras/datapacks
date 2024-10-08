# check if an ancient debris was dropped onto bedrock to grant the magnet
execute as @e[type=item,nbt={Item:{id:"minecraft:ancient_debris", count:1}, OnGround:true}] at @s positioned ~ ~ ~ \
        if block ~ ~-1 ~ minecraft:bedrock \
        run function server:magnet/obtain

# check if the magnet should be upgraded (level 1 and 10 obsidia needed, needs to be on a smithing table)
execute as @e[type=item,nbt={Item:{id:"minecraft:heavy_core", count:1, components:{"minecraft:custom_data":{is_magnet:true}}},OnGround:1b}] at @s \
        if entity @e[type=item,nbt={Item:{id:"minecraft:obsidian",count:10},OnGround:true},distance=..1] positioned ~ ~ ~ \
        if block ~ ~-1 ~ minecraft:smithing_table \
        run function server:magnet/upgrade_to_5

# check if the magnet should be upgraded (level 2 and a nether star needed, needs to be on an ominous vault)
execute as @e[type=item,nbt={Item:{id:"minecraft:heavy_core", count:1, components:{"minecraft:custom_data":{is_magnet_second_stage:true}}},OnGround:1b}] at @s \
        if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star",count:1},OnGround:true},distance=..1] positioned ~ ~ ~ \
        if block ~ ~-1 ~ minecraft:vault[ominous=true] \
        run function server:magnet/upgrade_to_7