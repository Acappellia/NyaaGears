$clear @s $(item_9)[!minecraft:custom_name] $(count_9)
$data modify storage nc:player players[$(p_id)].daily.complete_9 set value 1
$data modify storage nc:player players[$(p_id)].daily.item_9 set value "minecraft:lime_stained_glass_pane"
$data modify storage nc:player players[$(p_id)].daily.count_9 set value 1
data modify storage ng:tmp p_daily.complete_9 set value 1

execute if data storage ng:tmp p_daily.complete_3 if data storage ng:tmp p_daily.complete_6 run scoreboard players set #daily_complete ng 1
execute if data storage ng:tmp p_daily.complete_7 if data storage ng:tmp p_daily.complete_8 run scoreboard players set #daily_complete ng 1
execute if data storage ng:tmp p_daily.complete_1 if data storage ng:tmp p_daily.complete_5 run scoreboard players set #daily_complete ng 1
