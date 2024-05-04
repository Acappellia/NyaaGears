$clear @s $(item_9)[!minecraft:custom_name]
scoreboard players operation #daily_reqcount ng -= #daily_checkcount ng
$execute store result storage nc:player players[$(p_id)].daily.count_9 int 1 run scoreboard players get #daily_reqcount ng