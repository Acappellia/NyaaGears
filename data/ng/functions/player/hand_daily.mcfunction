scoreboard players reset @s trigger_daily
scoreboard players enable @s trigger_daily

execute unless entity @e[type=interaction,tag=ng_daily_npc,distance=..7] run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": " 离太远了没办法提交物品啦 >_<","color": "gray"}]
execute unless entity @e[type=interaction,tag=ng_daily_npc,distance=..7] run return -1

playsound entity.cat.ambient player @s ~ ~ ~ 1 1

##check complete
execute if score @s ng_daily_remain matches ..0 run return -1

##get info
data remove storage ng:tmp p_info
execute store result storage ng:tmp p_info.p_id int 1 run scoreboard players get @s p_id
data remove storage ng:tmp p_daily
function ng:daily/get_daily_data with storage ng:tmp p_info
data modify storage ng:tmp p_daily.p_id set from storage ng:tmp p_info.p_id

##check items
#define score_holder #daily_complete
#define score_holder #daily_handin
scoreboard players reset #daily_complete
scoreboard players reset #daily_handin
execute unless data storage ng:tmp p_daily.complete_1 run function ng:daily/checks/item_1 with storage ng:tmp p_daily
execute unless score #daily_complete ng matches 1 unless data storage ng:tmp p_daily.complete_2 run function ng:daily/checks/item_2 with storage ng:tmp p_daily
execute unless score #daily_complete ng matches 1 unless data storage ng:tmp p_daily.complete_3 run function ng:daily/checks/item_3 with storage ng:tmp p_daily
execute unless score #daily_complete ng matches 1 unless data storage ng:tmp p_daily.complete_4 run function ng:daily/checks/item_4 with storage ng:tmp p_daily
execute unless score #daily_complete ng matches 1 unless data storage ng:tmp p_daily.complete_5 run function ng:daily/checks/item_5 with storage ng:tmp p_daily
execute unless score #daily_complete ng matches 1 unless data storage ng:tmp p_daily.complete_6 run function ng:daily/checks/item_6 with storage ng:tmp p_daily
execute unless score #daily_complete ng matches 1 unless data storage ng:tmp p_daily.complete_7 run function ng:daily/checks/item_7 with storage ng:tmp p_daily
execute unless score #daily_complete ng matches 1 unless data storage ng:tmp p_daily.complete_8 run function ng:daily/checks/item_8 with storage ng:tmp p_daily
execute unless score #daily_complete ng matches 1 unless data storage ng:tmp p_daily.complete_9 run function ng:daily/checks/item_9 with storage ng:tmp p_daily

execute unless score #daily_handin ng matches 1.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": " 背包里没有满足需求的物品…","color": "gray"}]
execute unless score #daily_handin ng matches 1.. run return -2

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": " 物品已提交！","color": "#66ffcc"}]
playsound minecraft:ui.loom.take_result player @s ~ ~ ~ 1 1.5

execute if score #daily_complete ng matches 1 run function ng:daily/complete_daily


##open daily
data remove storage ng:tmp p_daily
function ng:daily/get_daily_data with storage ng:tmp p_info
execute store result storage ng:tmp p_daily.p_streak int 1 run scoreboard players get @s ng_daily_streak
execute store result storage ng:tmp p_daily.p_remain int 1 run scoreboard players get @s ng_daily_remain

execute unless score @s ng_daily_remain matches 1.. run function ng:daily/show_daily_allcomplete with storage ng:tmp p_daily
execute if score @s ng_daily_remain matches 1.. run function ng:daily/show_daily with storage ng:tmp p_daily