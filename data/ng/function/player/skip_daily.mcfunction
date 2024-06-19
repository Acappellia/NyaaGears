advancement revoke @s only ng:skip_daily
execute if score @s ng_daily_remain matches ..0 run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": " 使用失败…… 所有集物表都已完成","color": "gray"}]
execute if score @s ng_daily_remain matches ..0 run return -1

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": " 已跳过当前的集物表","color": "#66ffcc"}]

##store playerid
data remove storage ng:tmp p_info
execute store result storage ng:tmp p_info.p_id int 1 run scoreboard players get @s p_id

##complete daily
function ng:daily/complete_daily