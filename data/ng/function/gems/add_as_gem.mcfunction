data remove storage ng:tmp mainhand

##checkhand
data modify storage ng:tmp mainhand set from entity @s SelectedItem
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem run return -1
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_upg run return -1

##convert data
execute if data storage ng:tmp mainhand.components."minecraft:enchantments".levels run data modify storage ng:tmp mainhand.components."minecraft:custom_data".enchantments set from storage ng:tmp mainhand.components."minecraft:enchantments".levels
data remove storage ng:tmp mainhand.components."minecraft:enchantments"

execute if data storage ng:tmp mainhand.components."minecraft:attribute_modifiers".modifiers run data modify storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers set from storage ng:tmp mainhand.components."minecraft:attribute_modifiers".modifiers
data remove storage ng:tmp mainhand.components."minecraft:attribute_modifiers"

execute if data storage ng:tmp mainhand.components."minecraft:unbreakable" run data modify storage ng:tmp mainhand.components."minecraft:unbreakable".show_in_tooltip set value false

data modify storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem set value 1
data modify storage ng:tmp mainhand.components."minecraft:custom_data".ng_newgem set value 1

##add lore
function ng:gems/gem_addlore

##give item
forceload add 1600 1600
setblock 1600 0 1600 bedrock
setblock 1600 0 1600 shulker_box{Items:[{Slot:0b,count:1,id:"minecraft:stone"}]}
data modify block 1600 0 1600 Items[0].id set from storage ng:tmp mainhand.id
data modify block 1600 0 1600 Items[0].components set from storage ng:tmp mainhand.components
loot spawn ~ ~1 ~ mine 1600 0 1600 stone[minecraft:custom_data={drop_contents:1}]
setblock 1600 0 1600 bedrock

##info
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "gold"},{"text": "] ","color": "white"},{"text": "已创建 — ","color": "white"},{"storage": "ng:tmp","nbt":"mainhand.components.\"minecraft:custom_name\"","interpret": true}]