scoreboard objectives remove p_id
scoreboard objectives add p_id dummy 
scoreboard players set #player_id ng -1

data remove storage ng:player uuid_check
data remove storage ng:player players