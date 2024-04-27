$clear @s $(item_5)[!minecraft:custom_name] $(count_5)
$data modify storage ng:player players[$(p_id)].daily.complete_5 set value 1
$data modify storage ng:player players[$(p_id)].daily.item_5 set value "minecraft:lime_stained_glass_pane"
$data modify storage ng:player players[$(p_id)].daily.count_5 set value 1
data modify storage ng:tmp p_daily.complete_5 set value 1

execute if data storage ng:tmp p_daily.complete_1 if data storage ng:tmp p_daily.complete_9 run scoreboard players set #daily_complete ng 1
execute if data storage ng:tmp p_daily.complete_4 if data storage ng:tmp p_daily.complete_6 run scoreboard players set #daily_complete ng 1
execute if data storage ng:tmp p_daily.complete_2 if data storage ng:tmp p_daily.complete_8 run scoreboard players set #daily_complete ng 1
execute if data storage ng:tmp p_daily.complete_3 if data storage ng:tmp p_daily.complete_7 run scoreboard players set #daily_complete ng 1