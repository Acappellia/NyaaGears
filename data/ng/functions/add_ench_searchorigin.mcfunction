#define score_holder #ench_searchresult

tellraw @a ["index",{"score":{"name": "#ench_index","objective": "ng"}}]

data remove storage ng:tmp search_ench_id
$data modify storage ng:tmp search_ench_id set from storage ng:tmp offhand.tag.Enchantments[$(index)].id
execute store success score #ench_searchresult ng run data modify storage ng:tmp search_ench_id set from storage ng:tmp mainhand.tag.StoredEnchantments[0].id

tellraw @a "a"

execute unless score #ench_searchresult ng matches 1 run return 1

tellraw @a "b"

execute store result storage ng:tmp ench.index int 1 run scoreboard players add #ench_index ng 1
execute if score #ench_index ng >= #exsist_ench_count ng run return -1

tellraw @a "c"

execute store result score #ench_findorigin ng run function ng:add_ench_searchorigin with storage ng:tmp ench

tellraw @a "d"