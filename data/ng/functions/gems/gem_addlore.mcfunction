data modify storage ng:tmp mainhand.components."minecraft:custom_data".lore_origin set from storage ng:tmp mainhand.components."minecraft:lore"

execute if data storage ng:tmp mainhand.components."minecraft:custom_data".enchantments run data modify storage ng:tmp mainhand.components."minecraft:lore" append value '""'
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".enchantments run function ng:gems/gem_addlore_ench

execute if data storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[0] run data modify storage ng:tmp mainhand.components."minecraft:lore" append value '""'
data remove storage ng:tmp attribute_modifiers_addlore
data modify storage ng:tmp attribute_modifiers_addlore set from storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers
execute if data storage ng:tmp attribute_modifiers_addlore[0] run function ng:gems/gem_addlore_attr_loop

execute if data storage ng:tmp mainhand.components."minecraft:unbreakable" run data modify storage ng:tmp mainhand.components."minecraft:lore" append value '""'
execute if data storage ng:tmp mainhand.components."minecraft:unbreakable" run data modify storage ng:tmp mainhand.components."minecraft:lore" append value '[{"translate": "item.unbreakable","color": "blue","italic": false}]'

##add additional lore & name
execute unless data storage ng:tmp mainhand.components."minecraft:custom_name" run data modify storage ng:tmp mainhand.components."minecraft:custom_name" set value '[{"text": "生机之祝福","color": "#ffccaa","italic": false}]'
data modify storage ng:tmp mainhand.components."minecraft:lore" append value '""'
data modify storage ng:tmp mainhand.components."minecraft:lore" append value '[{"text": "手持祝福点击","color": "gray","italic": false},{"text": "龙首下的音符盒","color": "white","italic": false},{"text": "或","color": "gray","italic": false},{"text": "祝福圣台","color": "white","italic": false}]'
data modify storage ng:tmp mainhand.components."minecraft:lore" append value '[{"text": "可以将祝福","color": "gray","italic": false},{"text": "永久镶嵌","color": "white","italic": false},{"text": "在副手物品","color": "gray","italic": false}]'
data modify storage ng:tmp mainhand.components."minecraft:lore" append value '[{"text": "祝福带有的附魔将按照原版叠加","color": "dark_gray","italic": false}]'
data modify storage ng:tmp mainhand.components."minecraft:lore" append value '[{"text": "属性值将代替物品默认属性或额外叠加至物品","color": "dark_gray","italic": false}]'
execute unless data storage ng:tmp mainhand.components."minecraft:custom_data".lore_origin run data remove storage ng:tmp mainhand.components."minecraft:lore"[0]