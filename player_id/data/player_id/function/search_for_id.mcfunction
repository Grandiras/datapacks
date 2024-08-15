# assign the player the next available player_id
scoreboard players add player_id_counter player_id 1

# if anyone occupies the player_id at player_id_counter, increment player_id_counter until it is unique
execute as @a if score @s player_id = player_id_counter player_id run return run function player_id:assign_id

# assign the player_id to the player
execute store result score @s player_id run scoreboard players get player_id_counter player_id