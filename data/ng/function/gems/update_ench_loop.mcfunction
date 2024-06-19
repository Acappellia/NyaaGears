data remove storage ng:tmp ench_update

##change old id
data modify storage ng:tmp ench_update.old_id set value "minecraft:sweeping"
scoreboard players reset #checkstring ng
execute store success score #checkstring ng run data modify storage ng:tmp ench_update.old_id set from storage ng:tmp mainhand.components."minecraft:custom_data".Enchantments_store[0].id
execute unless score #checkstring ng matches 1 run data modify storage ng:tmp mainhand.components."minecraft:custom_data".Enchantments_store[0].id set value "minecraft:sweeping_edge"

data modify storage ng:tmp ench_update.old_id set value "sweeping"
scoreboard players reset #checkstring ng
execute store success score #checkstring ng run data modify storage ng:tmp ench_update.old_id set from storage ng:tmp mainhand.components."minecraft:custom_data".Enchantments_store[0].id
execute unless score #checkstring ng matches 1 run data modify storage ng:tmp mainhand.components."minecraft:custom_data".Enchantments_store[0].id set value "minecraft:sweeping_edge"

##update id
data modify storage ng:tmp ench_update.ench_id set from storage ng:tmp mainhand.components."minecraft:custom_data".Enchantments_store[0].id
function ng:gems/update_ench_single with storage ng:tmp ench_update

data remove storage ng:tmp mainhand.components."minecraft:custom_data".Enchantments_store[0]
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".Enchantments_store[0] run function ng:gems/update_ench_loop