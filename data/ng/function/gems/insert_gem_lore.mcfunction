$data modify storage ng:tmp gem_insert.lore_index set from storage ng:tmp offhand.components."minecraft:custom_data".ng_slots[$(slot_index)].lore_index
$data modify storage ng:tmp offhand.components."minecraft:custom_data".ng_slots[$(slot_index)].occupied set value 1

function ng:gems/insert_gem_lore_1 with storage ng:tmp gem_insert