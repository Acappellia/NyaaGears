playsound ui.button.click block @s ~ ~ ~ 1 1

##copy data
data remove storage ng:tmp mainhand
data remove storage ng:tmp offhand

##CHANGED HANDS!!!!!
data modify storage ng:tmp offhand set from entity @s SelectedItem
data modify storage ng:tmp mainhand set from entity @s Inventory[{Slot:-106b}]

##check hand
execute unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_slot run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "请将 未尽之诗 放置在副手","color": "gray"}]
execute unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_slot run return -1

execute unless data storage ng:tmp offhand.count run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "请将 待打开栏位的物品 放置在主手","color": "gray"}]
execute unless data storage ng:tmp offhand.count run return -1

##check avalibility
scoreboard players set #total_slots ng 0
scoreboard players set #occu_slots ng 0
execute store result score #total_slots ng if data storage ng:tmp offhand.components."minecraft:custom_data".ng_slots[]
execute store result score #occu_slots ng run data get storage ng:tmp offhand.components."minecraft:custom_data".ng_wishes

execute if score #occu_slots ng matches 1.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "此物品无法继续打开栏位","color": "gray"}]
execute if score #occu_slots ng matches 1.. run return -1

execute if score #total_slots ng matches 1.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "此物品无法继续打开栏位","color": "gray"}]
execute if score #total_slots ng matches 1.. run return -1

execute if data storage ng:tmp offhand.components."minecraft:custom_data".ng_item run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "此物品无法继续打开栏位","color": "gray"}]
execute if data storage ng:tmp offhand.components."minecraft:custom_data".ng_item run return -1

##remove item
item modify entity @s weapon.mainhand ng:remove_1
item modify entity @s weapon.offhand ng:remove_1

##add slot
function ng:gems/add_slot_first

##give item
forceload add 100 100
setblock 1600 0 1600 bedrock
setblock 1600 0 1600 shulker_box{Items:[{Slot:0b,count:1,id:"minecraft:stone"}]}
data modify block 1600 0 1600 Items[0].id set from storage ng:tmp offhand.id
data modify block 1600 0 1600 Items[0].components set from storage ng:tmp offhand.components
loot spawn ~ ~1 ~ mine 1600 0 1600 stone[minecraft:custom_data={drop_contents:1}]
setblock 1600 0 1600 bedrock

##info
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "成功打开祝福栏位","color": "#66ffcc"}]
playsound block.beacon.power_select player @a ~ ~ ~ 1 1
particle enchant ~ ~1 ~ 1 1 1 0.05 100