$clear @s $(item_7)[!minecraft:custom_name]
scoreboard players operation #daily_reqcount ng -= #daily_checkcount ng
$execute store result storage ng:player players[$(p_id)].daily.count_7 int 1 run scoreboard players get #daily_reqcount ng