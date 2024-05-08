playsound item.book.page_turn block @s ~ ~ ~ 1 1.5

##copy data
data remove storage ng:tmp mainhand
data modify storage ng:tmp mainhand set from entity @s SelectedItem

##check hand
execute unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_upg run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "手持祝福或者幻晶以分解","color": "gray"}]
execute unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_upg run return -1

##check hand
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem if data storage ng:tmp offhand.count run function ng:player/salvage_gem
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_upg if data storage ng:tmp offhand.count run function ng:player/salvage_gem_upgrade

##effect
particle ash ~ ~ ~ 0.4 0.4 0.4 0 10
playsound block.grindstone.use block @a ~ ~ ~ 0.8 1