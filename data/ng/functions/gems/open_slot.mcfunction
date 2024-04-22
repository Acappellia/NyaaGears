advancement revoke @s only ng:interact_slot

#stopsound @s * block.note_block.imitate.ender_dragon
playsound ui.button.click block @s ~ ~ ~ 1 1

##copy data
data remove storage ng:tmp mainhand
data remove storage ng:tmp offhand

data modify storage ng:tmp mainhand set from entity @s SelectedItem
data modify storage ng:tmp offhand set from entity @s Inventory[{Slot:-106b}]

##check hand
execute unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_slot run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "请将符文栏位放置在主手","color": "gray"}]
execute unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_slot run return -1

execute unless data storage ng:tmp offhand.count run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "请将需要打开额外栏位的物品放置在副手","color": "gray"}]
execute unless data storage ng:tmp offhand.count run return -1

##check avalibility
scoreboard players set #total_slots ng 0
scoreboard players set #occu_slots ng 0
execute store result score #total_slots ng if data storage ng:tmp offhand.components."minecraft:custom_data".ng_slots[]
execute store result score #occu_slots ng run data get storage ng:tmp offhand.components."minecraft:custom_data".ng_wishes

execute if score #total_slots ng matches ..0 run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "此物品无需或无法打开栏位","color": "gray"}]
execute if score #total_slots ng matches ..0 run return -1

#execute if score #total_slots ng matches ..0 if data storage ng:tmp offhand.components."minecraft:custom_data".ng_item run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "此物品无法镶嵌更多祝福","color": "gray"}]
#execute if score #total_slots ng matches ..0 if data storage ng:tmp offhand.components."minecraft:custom_data".ng_item run return -1

##remove item
item modify entity @s weapon.mainhand ng:remove_1
item modify entity @s weapon.offhand ng:remove_1

##add slot
data modify storage ng:tmp offhand.components."minecraft:custom_data".ng_slots append value {occupied:0}

#define score_holder #lore_count
execute store result score #lore_count ng if data storage ng:tmp offhand.components."minecraft:lore"[]
execute if score #occu_slots ng matches 1.. store result storage ng:tmp offhand.components."minecraft:custom_data".ng_slots[-1].lore_index int 1 run scoreboard players remove #lore_count ng 1
execute if score #occu_slots ng matches ..0 store result storage ng:tmp offhand.components."minecraft:custom_data".ng_slots[-1].lore_index int 1 run scoreboard players get #lore_count ng

execute if score #occu_slots ng matches 1.. run data modify storage ng:tmp offhand.components."minecraft:lore" insert -2 value '[{"text": "+ ","color": "gray","italic": false},{"text": "空的祝福栏位","color": "#aaffcc","italic": true}]'
execute if score #occu_slots ng matches ..0 run data modify storage ng:tmp offhand.components."minecraft:lore" insert -1 value '[{"text": "+ ","color": "gray","italic": false},{"text": "空的祝福栏位","color": "#aaffcc","italic": true}]'

##give item
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,count:1,id:"minecraft:stone"}]}
data modify block 0 -64 0 Items[0].id set from storage ng:tmp offhand.id
data modify block 0 -64 0 Items[0].components set from storage ng:tmp offhand.components
loot spawn ~ ~1 ~ mine 0 -64 0 stone[minecraft:custom_data={drop_contents:1}]
setblock 0 -64 0 bedrock

##info
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "成功打开祝福栏位","color": "#66ffcc"}]
playsound block.beacon.power_select player @a ~ ~ ~ 1 1
particle enchant ~ ~1 ~ 1 1 1 0.05 100