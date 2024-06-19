data remove storage ng:tmp daily

##get random item
data remove storage ng:tmp gen_daily
execute store result storage ng:tmp gen_daily.index int 1 run random value 0..354
function ng:daily/gen_daily/gen_1 with storage ng:tmp gen_daily
execute store result storage ng:tmp gen_daily.index int 1 run random value 0..354
function ng:daily/gen_daily/gen_2 with storage ng:tmp gen_daily
execute store result storage ng:tmp gen_daily.index int 1 run random value 0..354
function ng:daily/gen_daily/gen_3 with storage ng:tmp gen_daily
execute store result storage ng:tmp gen_daily.index int 1 run random value 0..354
function ng:daily/gen_daily/gen_4 with storage ng:tmp gen_daily
execute store result storage ng:tmp gen_daily.index int 1 run random value 0..354
function ng:daily/gen_daily/gen_5 with storage ng:tmp gen_daily
execute store result storage ng:tmp gen_daily.index int 1 run random value 0..354
function ng:daily/gen_daily/gen_6 with storage ng:tmp gen_daily
execute store result storage ng:tmp gen_daily.index int 1 run random value 0..354
function ng:daily/gen_daily/gen_7 with storage ng:tmp gen_daily
execute store result storage ng:tmp gen_daily.index int 1 run random value 0..354
function ng:daily/gen_daily/gen_8 with storage ng:tmp gen_daily
execute store result storage ng:tmp gen_daily.index int 1 run random value 0..354
function ng:daily/gen_daily/gen_9 with storage ng:tmp gen_daily

$data modify storage nc:player players[$(p_id)].daily set from storage ng:tmp daily

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": " 集物表已更新！","color": "#44ff88"}]
