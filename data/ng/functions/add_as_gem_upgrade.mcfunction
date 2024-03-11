data remove storage ng:tmp mainhand

data modify storage ng:tmp mainhand set from entity @s SelectedItem
execute if data storage ng:tmp mainhand.tag.ng_gem_upg run return -1
execute if data storage ng:tmp mainhand.tag.ng_gem run return -1

data modify storage ng:tmp mainhand.tag.Lore_origin set from storage ng:tmp mainhand.tag.display.Lore

execute if data storage ng:tmp mainhand.tag.Enchantments[0] run data modify storage ng:tmp mainhand.tag.display.Lore append value '""'
execute if data storage ng:tmp mainhand.tag.Enchantments[0] run function ng:add_gem_ench

execute if data storage ng:tmp mainhand.tag.AttributeModifiers[0] run data modify storage ng:tmp mainhand.tag.display.Lore append value '""'
execute if data storage ng:tmp mainhand.tag.AttributeModifiers[0] run function ng:add_gem_att

#define score_holder #gem_unbreakable
execute store result score #gem_unbreakable ng run data get storage ng:tmp mainhand.tag.Unbreakable
execute if score #gem_unbreakable ng matches 1 run data modify storage ng:tmp mainhand.tag.display.Lore append value '""'
execute if score #gem_unbreakable ng matches 1 run data modify storage ng:tmp mainhand.tag.display.Lore append value '[{"translate": "item.unbreakable","color": "blue","italic": false}]'

execute unless data storage ng:tmp mainhand.tag.display.Name run data modify storage ng:tmp mainhand.tag.display.Name set value '[{"text": "祝福幻晶","color": "#ffccaa","italic": false}]'
data modify storage ng:tmp mainhand.tag.display.Lore append value '""'
data modify storage ng:tmp mainhand.tag.display.Lore append value '[{"text": "可以在","color": "gray","italic": false},{"text": "龙首下的音符盒","color": "white","italic": false},{"text": "升级物品上的祝福","color": "gray","italic": false}]'
data modify storage ng:tmp mainhand.tag.ng_gem_upg set value 1
execute unless data storage ng:tmp mainhand.tag.Lore_origin run data remove storage ng:tmp mainhand.tag.display.Lore[0]
data modify storage ng:tmp mainhand.tag.HideFlags set value 255

function ng:giveitem with storage ng:tmp mainhand
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "gold"},{"text": "] ","color": "white"},{"text": "已创建 — ","color": "white"},{"storage": "ng:tmp","nbt":"mainhand.tag.display.Name","interpret": true}]