execute align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ note_block
execute align xyz positioned ~0.5 ~1 ~0.5 run setblock ~ ~ ~ glass
execute align xyz positioned ~0.5 ~1 ~0.5 run summon parrot ~ ~ ~ {NoAI:1b,Invulnerable:1b}
execute align xyz positioned ~0.5 ~0.9 ~0.5 run summon interaction ~ ~ ~ {width:1.2f,height:1.2f,Tags:["ng_lotto"]}
execute align xyz positioned ~0.5 ~2.3 ~0.5 run summon text_display ~ ~ ~ {text:'[{"text": "祝福炼成","color": "#aaccff"}]',billboard:"vertical"}
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "gold"},{"text": "] ","color": "white"},{"text": "已生成抽奖处","color": "white"}]