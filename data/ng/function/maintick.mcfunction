##reset lotto
execute as @a[scores={ng_lottocd_reset=2}] run scoreboard players reset @s ng_lottocd
execute as @a[scores={trigger_daily=1}] at @s run function ng:player/hand_daily