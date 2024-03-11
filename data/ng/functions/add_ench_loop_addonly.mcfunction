#define score_holder #ench_index
execute store result storage ng:tmp ench.index int 1 run scoreboard players set #ench_index ng 0
#define score_holder #exsist_ench_count
execute store result score #exsist_ench_count ng if data storage ng:tmp offhand.tag.Enchantments[]

#define score_holder #ench_findorigin
scoreboard players reset #ench_findorigin ng
execute store result score #ench_findorigin ng run function ng:add_ench_searchorigin with storage ng:tmp ench
execute if score #ench_findorigin ng matches 1 run function ng:add_ench_update_addonly with storage ng:tmp ench
execute if score #ench_findorigin ng matches -1 run data modify storage ng:tmp offhand.tag.Enchantments append from storage ng:tmp mainhand.tag.Enchantments_store[0]

data remove storage ng:tmp mainhand.tag.Enchantments_store[0]
execute if data storage ng:tmp mainhand.tag.Enchantments_store[0] run function ng:add_ench_loop