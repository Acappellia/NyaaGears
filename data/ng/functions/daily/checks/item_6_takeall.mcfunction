$clear @s $(item_6)[!minecraft:custom_name] $(count_6)
$data modify storage ng:player players[$(p_id)].daily.complete_6 set value 1
$data modify storage ng:player players[$(p_id)].daily.item_6 set value "minecraft:lime_stained_glass_pane"
$data modify storage ng:player players[$(p_id)].daily.count_6 set value 1
data modify storage ng:tmp p_daily.complete_6 set value 1

execute if data storage ng:tmp p_daily.complete_4 if data storage ng:tmp p_daily.complete_5 run scoreboard players set #daily_complete ng 1
execute if data storage ng:tmp p_daily.complete_3 if data storage ng:tmp p_daily.complete_9 run scoreboard players set #daily_complete ng 1
