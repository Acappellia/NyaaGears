##update id
execute unless score @s ng_daily_remain matches 7.. run function ng:daily/add_daily_remain
scoreboard players operation @s ng_daily_id = #daily_counter ng_daily_id

##generate
function ng:daily/generage_daily with storage ng:tmp p_info