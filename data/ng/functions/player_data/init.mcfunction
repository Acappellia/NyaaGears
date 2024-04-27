##init player

#define score_holder #search_result

##check if player changed
data remove storage ng:tmp search
data modify storage ng:tmp search.target_UUID set from entity @s UUID
execute store result score #search_result ng run function ng:player_data/search_uuid
execute if score #search_result ng matches 2 run function ng:player_data/recover_data
execute if score #search_result ng matches 2 run return 1

##add data in uuid_check
data modify storage ng:player uuid_check prepend value {}
data modify storage ng:player uuid_check[0].UUID set from storage ng:tmp search.target_UUID
execute store result score @s p_id store result storage ng:player uuid_check[0].playerid int 1 run scoreboard players add #player_id ng 1
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,id:"minecraft:player_head",count:1}]}
item modify block 0 -64 0 container.0 ng:set_skull
data modify storage ng:player uuid_check[0].name set from block 0 -64 0 Items[0].components."minecraft:profile".name
setblock 0 -64 0 bedrock

##init data
data modify storage ng:player players append value {}
data modify storage ng:player players[-1].playerid set from storage ng:player uuid_check[0].playerid
