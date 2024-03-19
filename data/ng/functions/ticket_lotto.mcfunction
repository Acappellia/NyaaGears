advancement revoke @s only ng:lotto

item modify entity @s weapon.mainhand ng:remove_1

#define score_holder #lotto_type
execute store result score #lotto_type ng run random value 0..2
execute if score #lotto_type ng matches 1..2 run function ng:ticket_lotto_upg
execute if score #lotto_type ng matches 1..2 run return 1

#define score_holder #lotto_count
execute store result score #lotto_count ng if data storage ng:lotto_gem items[]
execute store result storage ng:tmp lotto.items int 1 run scoreboard players remove #lotto_count ng 1
function ng:lotto_itempool with storage ng:tmp lotto
function ng:lotto_copyitem with storage ng:tmp lotto

execute if data storage ng:tmp mainhand.tag.Enchantments[0] run data modify storage ng:tmp mainhand.tag.display.Lore append value '""'
execute if data storage ng:tmp mainhand.tag.Enchantments[0] run function ng:add_gem_ench_random

execute if data storage ng:tmp mainhand.tag.AttributeModifiers[0] run data modify storage ng:tmp mainhand.tag.display.Lore append value '""'
execute if data storage ng:tmp mainhand.tag.AttributeModifiers[0] run function ng:add_gem_att

#define score_holder #gem_unbreakable
execute store result score #gem_unbreakable ng run data get storage ng:tmp mainhand.tag.Unbreakable
execute if score #gem_unbreakable ng matches 1 run data modify storage ng:tmp mainhand.tag.display.Lore append value '""'
execute if score #gem_unbreakable ng matches 1 run data modify storage ng:tmp mainhand.tag.display.Lore append value '[{"translate": "item.unbreakable","color": "blue","italic": false}]'

execute unless data storage ng:tmp mainhand.tag.display.Name run data modify storage ng:tmp mainhand.tag.display.Name set value '[{"text": "生机之祝福","color": "#ffccaa","italic": false}]'
data modify storage ng:tmp mainhand.tag.display.Lore append value '""'
data modify storage ng:tmp mainhand.tag.display.Lore append value '[{"text": "手持祝福点击","color": "gray","italic": false},{"text": "龙首下的音符盒","color": "white","italic": false}]'
data modify storage ng:tmp mainhand.tag.display.Lore append value '[{"text": "可以将祝福镶嵌在副手物品","color": "gray","italic": false}]'
data modify storage ng:tmp mainhand.tag.display.Lore append value '[{"text": "镶嵌无法撤销，请谨慎操作","color": "#ffcccc","italic": false}]'
data modify storage ng:tmp mainhand.tag.ng_gem set value 1
execute unless data storage ng:tmp mainhand.tag.display.Lore_origin run data remove storage ng:tmp mainhand.tag.display.Lore[0]
data modify storage ng:tmp mainhand.tag.HideFlags set value 255

function ng:giveitem with storage ng:tmp mainhand


tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "green"},{"text": "] ","color": "white"},{"text": "获得物品 — ","color": "white"},{"storage": "ng:tmp","nbt":"mainhand.tag.display.Name","interpret": true}]
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "green"},{"text": "] ","color": "white"},{"text": "アンビリーバボー!","color": "white"}]
playsound entity.parrot.ambient player @a ~ ~ ~ 1 1
particle totem_of_undying ~ ~1 ~ 0 0 0 0.5 20