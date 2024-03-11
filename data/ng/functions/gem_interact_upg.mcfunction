advancement revoke @s only ng:interact_upgrade

#stopsound @s * block.note_block.imitate.ender_dragon
playsound ui.button.click block @s ~ ~ ~ 1 1

data remove storage ng:tmp mainhand
data remove storage ng:tmp offhand

data modify storage ng:tmp mainhand set from entity @s SelectedItem
data modify storage ng:tmp offhand set from entity @s Inventory[{Slot:-106b}]

execute unless data storage ng:tmp offhand.Count run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "green"},{"text": "] ","color": "white"},{"text": "请将需要强化祝福的物品放置在副手","color": "gray"}]
execute unless data storage ng:tmp offhand.Count run return -1

#define score_holder #gem_upgrades
execute store result score #gem_upgrades ng run data get storage ng:tmp offhand.tag.ng_item
execute unless score #gem_upgrades ng matches 1.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "green"},{"text": "] ","color": "white"},{"text": "需要先为物品添加祝福后才可强化","color": "gray"}]
execute unless score #gem_upgrades ng matches 1.. run return -1
execute if score #gem_upgrades ng matches 4.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "green"},{"text": "] ","color": "white"},{"text": "该物品的祝福已强化至最高等级","color": "gray"}]
execute if score #gem_upgrades ng matches 4.. run return -1

item modify entity @s weapon.mainhand ng:remove_1
item modify entity @s weapon.offhand ng:remove_1

execute if data storage ng:tmp mainhand.tag.StoredAttributeModifiers[0] run function ng:add_attribute_loop
execute if data storage ng:tmp mainhand.tag.Enchantments_store[0] run function ng:add_ench_loop_addonly

data modify storage ng:tmp offhand.tag.Unbreakable set from storage ng:tmp mainhand.tag.Unbreakable


tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "green"},{"text": "] ","color": "white"},{"text": "祝福强化成功","color": "white"}]

execute if score #gem_upgrades ng matches 1 run data modify storage ng:tmp offhand.tag.display.Lore append value '[{"text": "-< ","color": "gray","italic": false},{"text": "★ ☆ ☆","color": "#ffcccc","italic": false},{"text": " >-","color": "gray","italic": false}]'
execute if score #gem_upgrades ng matches 2..3 run data remove storage ng:tmp offhand.tag.display.Lore[-1]
execute if score #gem_upgrades ng matches 2 run data modify storage ng:tmp offhand.tag.display.Lore append value '[{"text": "-< ","color": "gray","italic": false},{"text": "★ ★ ☆","color": "#ffaacc","italic": false},{"text": " >-","color": "gray","italic": false}]'
execute if score #gem_upgrades ng matches 3 run data modify storage ng:tmp offhand.tag.display.Lore append value '[{"text": "-< ","color": "gray","italic": false},{"text": "★ ★ ★","color": "#ff88cc","italic": false},{"text": " >-","color": "gray","italic": false}]'

execute store result storage ng:tmp offhand.tag.ng_item int 1 run scoreboard players add #gem_upgrades ng 1

function ng:giveitem with storage ng:tmp offhand

playsound block.beacon.power_select player @s ~ ~ ~ 2 1
particle enchant ~ ~1 ~ 1 1 1 0.05 100