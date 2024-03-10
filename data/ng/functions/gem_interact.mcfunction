advancement revoke @s only ng:interact

#stopsound @s * block.note_block.imitate.ender_dragon
playsound ui.button.click block @s ~ ~ ~ 1 1

data remove storage ng:tmp mainhand
data remove storage ng:tmp offhand

data modify storage ng:tmp mainhand set from entity @s SelectedItem
data modify storage ng:tmp offhand set from entity @s Inventory[{Slot:-106b}]

execute unless data storage ng:tmp offhand.Count run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "green"},{"text": "] ","color": "white"},{"text": "请将需要被镶嵌祝福的物品放置在副手","color": "gray"}]
execute unless data storage ng:tmp offhand.Count run return -1

execute if data storage ng:tmp offhand.tag.ng_item run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "green"},{"text": "] ","color": "white"},{"text": "拥有祝福的物品无法再次镶嵌","color": "gray"}]
execute if data storage ng:tmp offhand.tag.ng_item run return -1

item modify entity @s weapon.mainhand ng:remove_1
item modify entity @s weapon.offhand ng:remove_1

execute if data storage ng:tmp mainhand.tag.StoredAttributeModifiers[0] run function ng:add_attribute_loop
execute if data storage ng:tmp mainhand.tag.StoredEnchantments[0] run function ng:add_ench_loop

data modify storage ng:tmp offhand.tag.Unbreakable merge from storage ng:tmp mainhand.tag.Unbreakable

data modify storage ng:tmp offhand.tag.display.Lore append value '""'
data modify storage ng:tmp offhand.tag.display.Lore append value '[{"text": "已镶嵌:","color": "#aaffcc","italic": true}]'
data modify storage ng:tmp offhand.tag.display.Lore append from storage ng:tmp mainhand.tag.display.Name
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "green"},{"text": "] ","color": "white"},{"text": "成功镶嵌 — ","color": "white"},{"storage": "ng:tmp","nbt":"mainhand.tag.display.Name","interpret": true}]

data modify storage ng:tmp offhand.tag.ng_item set value 1

function ng:giveitem with storage ng:tmp offhand

playsound block.beacon.power_select player @s ~ ~ ~ 1 1
particle enchant ~ ~1 ~ 1 1 1 0.05 100