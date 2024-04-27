##search uuid

##init a marker & check current id
data modify storage ng:tmp search.check_UUID set from storage ng:player uuid_check[0].UUID
data modify storage ng:tmp search.init_UUID set from storage ng:player uuid_check[0].UUID

##if it has a value, enter loop
execute if data storage ng:tmp search.check_UUID store result score #search_result ng run function ng:player_data/search_uuid_loop