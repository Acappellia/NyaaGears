advancement revoke @s only ng:kill_mob

#execute if score @s ng_killcd matches ..60 run playsound block.chain.break player @s ~ ~ ~ 1 1
execute if score @s ng_killcd matches ..60 run return -1
tag @s remove ng_cd_full

scoreboard players remove @s ng_killcd 60
function ng:giveitem with storage ng:lotto_gem material

playsound block.enchantment_table.use player @s ~ ~ ~ 1 1