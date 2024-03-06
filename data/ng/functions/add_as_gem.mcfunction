data remove storage ng:tmp mainhand

data modify storage ng:tmp mainhand set from entity @s SelectedItem
execute if data storage ng:tmp mainhand.tag.ng_gem run return -1

execute if data storage ng:tmp mainhand.tag.Enchantments[0] run function ng:add_gem_ench
execute if data storage ng:tmp mainhand.tag.AttributeModifiers[0] run function ng:add_gem_att

execute unless data storage ng:tmp mainhand.tag.display.Name run data modify storage ng:tmp mainhand.tag.display.Name set value '[{"text": "生机之祝福","color": "#ffccaa","italic": false}]'
data modify storage ng:tmp mainhand.tag.display.Lore append value '""'
data modify storage ng:tmp mainhand.tag.display.Lore append value '[{"text": "手持祝福点击","color": "gray","italic": false},{"text": "龙首下的音符盒","color": "white","italic": false}]'
data modify storage ng:tmp mainhand.tag.display.Lore append value '[{"text": "可以将祝福镶嵌在副手物品","color": "gray","italic": false}]'
data modify storage ng:tmp mainhand.tag.display.Lore append value '[{"text": "镶嵌无法撤销，请谨慎操作","color": "#ffcccc","italic": false}]'
data modify storage ng:tmp mainhand.tag.ng_gem set value 1

function ng:giveitem with storage ng:tmp mainhand