$clear @s $(item_5)[!minecraft:custom_name]
scoreboard players operation #daily_reqcount ng -= #daily_checkcount ng
$execute store result storage nc:player players[$(p_id)].daily.count_5 int 1 run scoreboard players get #daily_reqcount ng