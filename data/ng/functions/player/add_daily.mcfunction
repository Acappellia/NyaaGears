advancement revoke @s only ng:add_daily
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": " 已增加每日收集表数量","color": "#66ffcc"}]
playsound block.amethyst_block.resonate player @s ~ ~ ~ 1 1

##add count
scoreboard players add @s ng_daily_remain 1

##store playerid
data remove storage ng:tmp p_info
execute store result storage ng:tmp p_info.p_id int 1 run scoreboard players get @s p_id

##refresh table
function ng:daily/generage_daily with storage ng:tmp p_info