$clear @s $(item_2)[!minecraft:custom_name] $(count_2)
$data modify storage ng:player players[$(p_id)].daily.complete_2 set value 1
$data modify storage ng:player players[$(p_id)].daily.item_2 set value "minecraft:lime_stained_glass_pane"
$data modify storage ng:player players[$(p_id)].daily.count_2 set value 1
data modify storage ng:tmp p_daily.complete_2 set value 1

execute if data storage ng:tmp p_daily.complete_1 if data storage ng:tmp p_daily.complete_3 run scoreboard players set #daily_complete ng 1
execute if data storage ng:tmp p_daily.complete_5 if data storage ng:tmp p_daily.complete_8 run scoreboard players set #daily_complete ng 1