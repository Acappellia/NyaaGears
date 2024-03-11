#define score_holder #ench_index
execute store result storage ng:tmp ench.index int 1 run scoreboard players set #ench_index ng 0

#define score_holder #ench_findorigin
execute store result score #ench_findorigin ng run function ng:add_ench_searchorigin with storage ng:tmp ench
execute if score #ench_findorigin ng matches 1 run function ng:add_ench_update with storage ng:tmp ench
execute if score #ench_findorigin ng matches -1 run data modify storage ng:tmp offhand.tag.Enchantments append from storage ng:tmp mainhand.tag.StoredEnchantments[0]

data remove storage ng:tmp mainhand.tag.StoredEnchantments[0]
execute if data storage ng:tmp mainhand.tag.StoredEnchantments[0] run function ng:add_ench_loop