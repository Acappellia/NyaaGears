execute at @s run function nc:shulker_give {type:"daily"}
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": " 获得了完成集物表的奖励！","color": "#66ffcc"}]
playsound item.goat_horn.sound.1 player @s ~ ~ ~ 1 1.2
particle end_rod ~ ~1 ~ 1 1 1 0.01 20
particle wax_on ~ ~1 ~ 1 1 1 0 20
scoreboard players remove @s ng_daily_remain 1
scoreboard players add @s ng_daily_streak 1

#define score_holder #daily_streak
scoreboard players operation #daily_streak ng = @s ng_daily_streak
scoreboard players operation #daily_streak ng %= #5 ng
execute if score #daily_streak ng matches 0 run function ng:daily/bonus_rewards

execute if score #daily_counter ng_daily_id > @s ng_daily_id run function ng:daily/update_daily
execute if score #daily_counter ng_daily_id > @s ng_daily_id run return 1
execute if score @s ng_daily_remain matches ..0 run return 1
function ng:daily/generage_daily with storage ng:tmp p_info