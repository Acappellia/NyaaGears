playsound item.book.page_turn block @s ~ ~ ~ 1 1.5

##copy data
data remove storage ng:tmp mainhand
data modify storage ng:tmp mainhand set from entity @s SelectedItem

##check hand
execute unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_upg unless data storage ng:tmp mainhand.components."minecraft:custom_data".nw_salvage run return run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "手持的物品不可分解喵","color": "gray"}]

##check hand
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem run function ng:player/salvage_gem
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_upg run function ng:player/salvage_gem_upgrade
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".nw_salvage run function ng:player/salvage_fur

##effect
particle ash ~ ~ ~ 0.4 0.4 0.4 0 10
playsound entity.zombie.attack_iron_door block @a ~ ~ ~ 0.8 0.6
playsound entity.turtle.egg_break block @a ~ ~0.5 ~ 1 1