##add player id
execute as @a unless score @s p_id matches 0.. run function ng:player_data/init

schedule function ng:20gt_tick 20t replace