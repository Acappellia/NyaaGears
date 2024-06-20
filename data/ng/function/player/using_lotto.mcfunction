advancement revoke @s only ng:use_item

scoreboard players remove @s ng_lottocd 1
scoreboard players reset @s ng_lottocd_reset

execute if score @s ng_lottocd matches -1 run summon area_effect_cloud ~ ~0.5 ~ {Particle:{type:"end_rod"},Radius:3f,RadiusPerTick:-0.5f,RadiusOnUse:0f,Duration:40}
execute if score @s ng_lottocd matches -1 run effect give @s darkness 3 0 true
#execute if score @s ng_lottocd matches -20 run effect give @s blindness 1 0 true

execute if score @s ng_lottocd matches -1 run playsound item.brush.brushing.sand player @a ~ ~ ~ 0.5 1.5
execute if score @s ng_lottocd matches -7 run playsound item.brush.brushing.sand player @a ~ ~ ~ 0.5 1.6
execute if score @s ng_lottocd matches -20 run playsound item.brush.brushing.sand player @a ~ ~ ~ 0.5 1.9
execute if score @s ng_lottocd matches -26 run playsound item.brush.brushing.sand player @a ~ ~ ~ 0.5 2

execute if score @s ng_lottocd matches -1 anchored eyes positioned ^-0.6 ^-0.2 ^0.5 run particle witch ~ ~ ~ 0 0 0 0.05 3
execute if score @s ng_lottocd matches -7 anchored eyes positioned ^-0.3 ^-0.2 ^0.5 run particle witch ~ ~ ~ 0 0 0 0.05 3
execute if score @s ng_lottocd matches -20 anchored eyes positioned ^ ^-0.2 ^0.5 run particle witch ~ ~ ~ 0 0 0 0.05 3
execute if score @s ng_lottocd matches -26 anchored eyes positioned ^ ^-0.2 ^0.5 run particle witch ~ ~ ~ 0 0 0 0.05 3

#execute if score @s ng_lottocd matches -1 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 0.7
#execute if score @s ng_lottocd matches -3 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 0.75
#execute if score @s ng_lottocd matches -5 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 0.8
#execute if score @s ng_lottocd matches -7 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 0.85
#execute if score @s ng_lottocd matches -9 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 0.9
#execute if score @s ng_lottocd matches -11 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 0.95
#execute if score @s ng_lottocd matches -13 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1
#execute if score @s ng_lottocd matches -15 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1.05
#execute if score @s ng_lottocd matches -17 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1.1
#execute if score @s ng_lottocd matches -19 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1.15
#execute if score @s ng_lottocd matches -21 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1.2
#execute if score @s ng_lottocd matches -23 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1.25
#execute if score @s ng_lottocd matches -25 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1.3
#execute if score @s ng_lottocd matches -27 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1.35
#execute if score @s ng_lottocd matches -29 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1.4
#execute if score @s ng_lottocd matches -31 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1.45
#execute if score @s ng_lottocd matches -33 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1.5
#execute if score @s ng_lottocd matches -35 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1.55
#execute if score @s ng_lottocd matches -37 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1.6
#execute if score @s ng_lottocd matches -39 run playsound block.note_block.snare player @a ~ ~ ~ 0.1 1.65

#execute if score @s ng_lottocd matches -40 run effect clear @s darkness
execute if score @s ng_lottocd matches ..-40 run function ng:lotto/check_ticket