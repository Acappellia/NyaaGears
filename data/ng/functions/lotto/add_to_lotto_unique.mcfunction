##input
#define score_holder #input_lotto_type
#define score_holder #input_lotto_uniquechance
execute unless score #input_lotto_uniquechance ng matches 0.. run scoreboard players set #input_lotto_uniquechance ng 10
execute unless score #input_lotto_type ng matches 0.. run scoreboard players set #input_lotto_type ng 2147483647

##check index
data remove storage ng:tmp mainhand
data modify storage ng:tmp mainhand set from entity @s SelectedItem

#define score_holder #lotto_type_count
execute store result score #lotto_type_count ng if data storage ng:lottos types[]
execute if score #input_lotto_type ng > #lotto_type_count ng run scoreboard players operation #input_lotto_type ng = #lotto_type_count ng
data remove storage ng:tmp add_lotto
execute store result storage ng:tmp add_lotto.type int 1 run scoreboard players get #input_lotto_type ng

##check hand
execute unless data storage ng:tmp mainhand.count run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "请手持需要添加进奖池 #","color": "gray"},{"score":{"name": "#input_lotto_type","objective": "ng"}},{"text": " 的物品","color": "gray"}]
execute unless data storage ng:tmp mainhand.count run return -1

##add new pool
execute if score #input_lotto_type ng >= #lotto_type_count ng run data modify storage ng:lottos types append value {}

##modify gems
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem run function ng:lotto/add_to_lotto_gems

##add to lotto
function ng:lotto/add_item_unique with storage ng:tmp add_lotto

##tellraw
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "gold"},{"text": "] ","color": "white"},{"text": "已将奖池 #","color": "white"},{"score":{"name": "#input_lotto_type","objective": "ng"}},{"text": " 的独特物品设置为 ","color": "white"},{"storage": "ng:tmp","nbt":"mainhand.components.\"minecraft:custom_name\"","interpret": true}]