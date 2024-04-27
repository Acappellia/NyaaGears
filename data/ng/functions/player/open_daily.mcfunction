advancement revoke @s only ng:interact_daily

scoreboard players enable @s trigger_daily
playsound entity.cat.ambient player @s ~ ~ ~ 1 1

##store playerid
data remove storage ng:tmp p_info
execute store result storage ng:tmp p_info.p_id int 1 run scoreboard players get @s p_id

##check daily resets
execute unless score @s ng_daily_id matches 0.. run scoreboard players set @s ng_daily_id 0
execute if score #daily_counter ng_daily_id > @s ng_daily_id run function ng:daily/update_daily

##tellraw
data remove storage ng:tmp p_daily
function ng:daily/get_daily_data with storage ng:tmp p_info
execute store result storage ng:tmp p_daily.p_streak int 1 run scoreboard players get @s ng_daily_streak
execute store result storage ng:tmp p_daily.p_remain int 1 run scoreboard players get @s ng_daily_remain

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": " 已打开每日收集","color": "#66ffcc"}]
execute unless score @s ng_daily_remain matches 1.. run function ng:daily/show_daily_allcomplete with storage ng:tmp p_daily
execute if score @s ng_daily_remain matches 1.. run function ng:daily/show_daily with storage ng:tmp p_daily