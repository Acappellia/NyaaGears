#define storage ng:tmp
#define storage ng:lottos
#define storage ng:player
#define storage ng:daily

scoreboard objectives add ng dummy
scoreboard players set #-1 ng -1
scoreboard players set #2 ng 2
scoreboard players set #3 ng 3
scoreboard players set #5 ng 5

scoreboard objectives add ng_test dummy

scoreboard objectives add ng_lottocd dummy
scoreboard objectives add ng_lottocd_reset custom:time_since_death
scoreboard objectives add ng_lottocount dummy
scoreboard objectives add ng_lottotype dummy

scoreboard objectives add ng_daily_streak dummy
scoreboard objectives add ng_daily_remain dummy
scoreboard objectives add ng_daily_id dummy

scoreboard objectives add trigger_daily trigger

forceload add 0 0 0 0 

function ng:slowtick

# Create scoreboard objective and initialise LCG
scoreboard objectives add random dummy
execute unless score #lcg random = #lcg random store result score #lcg random run seed

# Define constants
scoreboard players set #lcg_a random 1630111353
scoreboard players set #lcg_c random 1623164762
scoreboard players set #lcg_m random 2147483647

function ng:daily/init_daily_list
schedule function ng:3gt_tick 3t replace
schedule function ng:20gt_tick 20t replace
schedule function ng:1realday_tick 72d append

scoreboard objectives add p_id dummy 
#define score_holder #player_id
execute unless score #player_id ng matches -2147483648..2147483647 run scoreboard players set #player_id ng -1
