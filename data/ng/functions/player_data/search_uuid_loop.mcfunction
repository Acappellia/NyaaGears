##search uuid loop

#define score_holder #search_uuid_check

##check the current id
execute store success score #search_uuid_check ng run data modify storage ng:tmp search.check_UUID set from storage ng:tmp search.target_UUID
execute if score #search_uuid_check ng matches 0 run return 2

##move list top to bottom
data modify storage ng:player uuid_check append from storage ng:player uuid_check[0]
data remove storage ng:player uuid_check[0]

##get current id again
data modify storage ng:tmp search.check_UUID set from storage ng:player uuid_check[0].UUID

##check if looped a full cucle
execute store success score #search_uuid_check ng run data modify storage ng:tmp search.check_UUID set from storage ng:tmp search.init_UUID
data modify storage ng:tmp search.check_UUID set from storage ng:player uuid_check[0].UUID
execute if score #search_uuid_check ng matches 0 run return -1

##loop
execute store result score #search_result ng run function ng:player_data/search_uuid_loop