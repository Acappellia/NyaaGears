playsound minecraft:entity.phantom.flap player @a ~ ~ ~ 1 0.8
playsound minecraft:entity.phantom.flap player @a ~ ~ ~ 1 1.5
execute anchored eyes positioned ^ ^-0.2 ^0.5 run particle dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute anchored eyes positioned ^ ^-0.2 ^0.5 run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.02 5

item replace entity @s weapon.mainhand with air

execute store result score @s ng_lottotype run data get storage ng:tmp mainhand.components."minecraft:custom_data".ng_lotto_type
execute store result score @s ng_lottocount run data get storage ng:tmp mainhand.count