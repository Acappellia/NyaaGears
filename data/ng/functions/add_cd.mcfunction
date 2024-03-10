scoreboard players operation @s ng_killcd += #ng_timer ng_killcd_time
scoreboard players operation @s ng_killcd -= @s ng_killcd_time
scoreboard players operation @s ng_killcd_time = #ng_timer ng_killcd_time

execute unless entity @s[tag=ng_cd_full] if score @s ng_killcd matches 1080.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "green"},{"text": "] ","color": "white"},{"text": "你感到祝福的力量已经满盈...","color": "gray"}]
execute if score @s ng_killcd matches 1080.. run tag @s add ng_cd_full
execute if score @s ng_killcd matches 1080.. run scoreboard players set @s ng_killcd 1080