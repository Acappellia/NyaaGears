advancement revoke @s only ng:kill_mob

#define score_holder #loot_random
execute store result score #loot_random ng run random value 1..1080 minecraft:entities/bat
execute if score @s ng_killcd < #loot_random ng run return -1

#execute if score @s ng_killcd matches .20 run playsound block.chain.break player @s ~ ~ ~ 1 1
execute if score @s ng_killcd matches ..20 run return -1

tag @s remove ng_cd_full
scoreboard players remove @s ng_killcd 20
function ng:giveitem with storage ng:lotto_gem material

playsound block.enchantment_table.use player @a ~ ~ ~ 1 1