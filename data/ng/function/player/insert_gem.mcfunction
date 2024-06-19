##check avalibility
#define score_holder #total_slots
#define score_holder #occu_slots
scoreboard players set #total_slots ng 0
scoreboard players set #occu_slots ng 0
execute store result score #total_slots ng if data storage ng:tmp offhand.components."minecraft:custom_data".ng_slots[]
execute store result score #occu_slots ng run data get storage ng:tmp offhand.components."minecraft:custom_data".ng_wishes

execute if score #total_slots ng matches ..0 if data storage ng:tmp offhand.components."minecraft:custom_data".ng_item run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "此物品无法镶嵌更多祝福","color": "gray"}]
execute if score #total_slots ng matches ..0 if data storage ng:tmp offhand.components."minecraft:custom_data".ng_item run return -1

execute if score #occu_slots ng matches 1.. if score #total_slots ng <= #occu_slots ng run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "此物品无法镶嵌更多祝福","color": "gray"}]
execute if score #occu_slots ng matches 1.. if score #total_slots ng <= #occu_slots ng run return -1

##remove item
item modify entity @s weapon.mainhand ng:remove_1
item modify entity @s weapon.offhand ng:remove_1

##update legacy item
execute unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_newgem run function ng:gems/gem_update_legacy

##update item
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[0] run function ng:gems/add_attribute_loop
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".enchantments run function ng:gems/add_ench
data modify storage ng:tmp offhand.components."minecraft:unbreakable" set from storage ng:tmp mainhand.components."minecraft:unbreakable"
execute if data storage ng:tmp offhand.components."minecraft:unbreakable" run data modify storage ng:tmp offhand.components."minecraft:unbreakable".show_in_tooltip set value true

##add slot info for 1st wish
execute if score #total_slots ng matches ..0 run function ng:gems/add_slot_first

##insert gem
data remove storage ng:tmp gem_insert
execute store result storage ng:tmp gem_insert.slot_index int 1 run scoreboard players get #occu_slots ng 
function ng:gems/insert_gem_lore with storage ng:tmp gem_insert

##update info
execute unless data storage ng:tmp offhand.components."minecraft:custom_data".ng_item run data modify storage ng:tmp offhand.components."minecraft:lore" append value '[{"text": "< ","color": "gray","italic": false},{"text": "☆ ☆ ☆","color": "white","italic": false},{"text": " >","color": "gray","italic": false}]'
execute unless data storage ng:tmp offhand.components."minecraft:custom_data".ng_item run data modify storage ng:tmp offhand.components."minecraft:custom_data".ng_item set value 1
execute store result storage ng:tmp offhand.components."minecraft:custom_data".ng_wishes int 1 run scoreboard players add #occu_slots ng 1

##give item
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,count:1,id:"minecraft:stone"}]}
data modify block 0 -64 0 Items[0].id set from storage ng:tmp offhand.id
data modify block 0 -64 0 Items[0].components set from storage ng:tmp offhand.components
loot spawn ~ ~1 ~ mine 0 -64 0 stone[minecraft:custom_data={drop_contents:1}]
setblock 0 -64 0 bedrock

##info
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "成功镶嵌 — ","color": "white"},{"storage": "ng:tmp","nbt":"mainhand.components.\"minecraft:custom_name\"","interpret": true}]
playsound block.beacon.power_select player @a ~ ~ ~ 1 1
particle enchant ~ ~1 ~ 1 1 1 0.05 100