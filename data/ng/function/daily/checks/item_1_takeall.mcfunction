$clear @s $(item_1)[!minecraft:custom_name,!minecraft:custom_data] $(count_1)
$data modify storage nc:player players[$(p_id)].daily.complete_1 set value 1
$data modify storage nc:player players[$(p_id)].daily.item_1 set value "minecraft:lime_stained_glass_pane"
$data modify storage nc:player players[$(p_id)].daily.count_1 set value 1
data modify storage ng:tmp p_daily.complete_1 set value 1

execute if data storage ng:tmp p_daily.complete_2 if data storage ng:tmp p_daily.complete_3 run scoreboard players set #daily_complete ng 1
execute if data storage ng:tmp p_daily.complete_4 if data storage ng:tmp p_daily.complete_7 run scoreboard players set #daily_complete ng 1
execute if data storage ng:tmp p_daily.complete_5 if data storage ng:tmp p_daily.complete_9 run scoreboard players set #daily_complete ng 1