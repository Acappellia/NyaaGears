#define score_holder #daily_checkcount
#define score_holder #daily_reqcount
scoreboard players reset #daily_checkcount ng
scoreboard players reset #daily_reqcount ng
$execute store result score #daily_checkcount ng run clear @s $(item_8)[!minecraft:custom_name,!minecraft:custom_data] 0
execute unless score #daily_checkcount ng matches 1.. run return -1

execute store result score #daily_reqcount ng run data get storage ng:tmp p_daily.count_8

execute if score #daily_checkcount ng >= #daily_reqcount ng run function ng:daily/checks/item_8_takeall with storage ng:tmp p_daily
execute unless score #daily_checkcount ng >= #daily_reqcount ng run function ng:daily/checks/item_8_takepart with storage ng:tmp p_daily

scoreboard players set #daily_handin ng 1