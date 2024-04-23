scoreboard players reset @s ng_lottocd

##copy data
data remove storage ng:tmp mainhand
data remove storage ng:tmp offhand

data modify storage ng:tmp mainhand set from entity @s SelectedItem
data modify storage ng:tmp offhand set from entity @s Inventory[{Slot:-106b}]

##check hand
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".ng_ticket run function ng:lotto/consume_ticket_mainhand
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".ng_ticket run return -1

execute if data storage ng:tmp offhand.components."minecraft:custom_data".ng_ticket run function ng:lotto/consume_ticket_offhand
execute if data storage ng:tmp offhand.components."minecraft:custom_data".ng_ticket run return -1

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "请不要在抽奖时随意切换物品 >_<","color": "gray"}]