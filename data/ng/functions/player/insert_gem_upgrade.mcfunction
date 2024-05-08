##check stat
#define score_holder #gem_upgrades
execute store result score #gem_upgrades ng run data get storage ng:tmp offhand.components."minecraft:custom_data".ng_item
execute unless score #gem_upgrades ng matches 1.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "需要先为物品添加祝福后才可强化","color": "gray"}]
execute unless score #gem_upgrades ng matches 1.. run return -1
execute if score #gem_upgrades ng matches 4.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "该物品无法添加更多强化","color": "gray"}]
execute if score #gem_upgrades ng matches 4.. run return -1

item modify entity @s weapon.mainhand ng:remove_1
item modify entity @s weapon.offhand ng:remove_1

##update legacy item
execute unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_newgem run function ng:gems/gem_update_legacy

##update item
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[0] run function ng:gems/add_attribute_loop
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".enchantments run function ng:gems/add_ench_lvlup
data modify storage ng:tmp offhand.components."minecraft:unbreakable" set from storage ng:tmp mainhand.components."minecraft:unbreakable"
execute if data storage ng:tmp offhand.components."minecraft:unbreakable" run data modify storage ng:tmp offhand.components."minecraft:unbreakable".show_in_tooltip set value true

##change lore
execute if score #gem_upgrades ng matches 1 unless data storage ng:tmp offhand.components."minecraft:custom_data".ng_wishes run data modify storage ng:tmp offhand.components."minecraft:lore" append value '""'
data remove storage ng:tmp offhand.components."minecraft:lore"[-1]

execute if score #gem_upgrades ng matches 1 run data modify storage ng:tmp offhand.components."minecraft:lore" append value '[{"text": "< ","color": "gray","italic": false},{"text": "★ ☆ ☆","color": "#ffcccc","italic": false},{"text": " >","color": "gray","italic": false}]'
execute if score #gem_upgrades ng matches 2 run data modify storage ng:tmp offhand.components."minecraft:lore" append value '[{"text": "< ","color": "gray","italic": false},{"text": "★ ★ ☆","color": "#ffaacc","italic": false},{"text": " >","color": "gray","italic": false}]'
execute if score #gem_upgrades ng matches 3 run data modify storage ng:tmp offhand.components."minecraft:lore" append value '[{"text": "< ","color": "gray","italic": false},{"text": "★ ★ ★","color": "#ff88cc","italic": false},{"text": " >","color": "gray","italic": false}]'

##update info
execute store result storage ng:tmp offhand.components."minecraft:custom_data".ng_item int 1 run scoreboard players add #gem_upgrades ng 1

##give
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,count:1,id:"minecraft:stone"}]}
data modify block 0 -64 0 Items[0].id set from storage ng:tmp offhand.id
data modify block 0 -64 0 Items[0].components set from storage ng:tmp offhand.components
loot spawn ~ ~1 ~ mine 0 -64 0 stone[minecraft:custom_data={drop_contents:1}]
setblock 0 -64 0 bedrock

##display
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "祝福强化成功","color": "white"}]
playsound block.beacon.power_select player @a ~ ~ ~ 2 1
particle enchant ~ ~1 ~ 1 1 1 0.05 100