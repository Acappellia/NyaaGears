scoreboard players operation @s ng_daily_remain += #daily_counter ng_daily_id
scoreboard players operation @s ng_daily_remain -= @s ng_daily_id
execute if score @s ng_daily_remain matches 8.. run scoreboard players set @s ng_daily_remain 7