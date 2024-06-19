data modify storage ng:tmp offhand.components."minecraft:attribute_modifiers".modifiers append from storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[0]
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["ng_uuid"]}
data modify storage ng:tmp offhand.components."minecraft:attribute_modifiers".modifiers[-1].id set string entity @e[type=area_effect_cloud,distance=..1,limit=1,tag=ng_uuid] UUID 0
data remove storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[0]
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[0] run function ng:gems/add_attribute_loop