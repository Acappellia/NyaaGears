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

execute unless score #daily_counter ng_daily_id = #daily_counter ng_daily_id run scoreboard players set #daily_counter ng_daily_id 1

scoreboard objectives add trigger_daily trigger

function ng:daily/init_daily_list
schedule function ng:3gt_tick 3t replace
schedule function ng:1realday_tick 72d append