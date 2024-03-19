#define storage ng:tmp
#define storage ng:lotto_gem
#define storage ng:lotto_gem_upg

scoreboard objectives add ng dummy
scoreboard players set #-1 ng -1
scoreboard players set #2 ng 2

scoreboard objectives add ng_killcd dummy
scoreboard objectives add ng_killcd_time dummy

forceload add 0 0 0 0 

function ng:slowtick