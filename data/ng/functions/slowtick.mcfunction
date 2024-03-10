#define score_holder #ng_timer

scoreboard players add #ng_timer ng_killcd_time 1

execute as @a run function ng:add_cd

schedule function ng:slowtick 60s replace