# if the player already has a shrink stick, do nothing
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{is_shrink_stick:true}}}]}] run return fail

give @s stick[enchantments={unbreaking:10}, \
              food={nutrition:0, saturation:0.0, eat_seconds:1000000, can_always_eat:true}, \
              custom_name='["", {"text": "Shrink Stick", "italic": false, "color": "gold"}]', \
              lore=['["", {"text": ""}]', '["", {"text": "Wanna be small?", "italic": false}]'], \
              custom_data={is_shrink_stick:true}] 1