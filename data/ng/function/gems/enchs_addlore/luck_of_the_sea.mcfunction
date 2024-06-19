data remove storage ng:tmp enchlore
data modify storage ng:tmp enchlore.id set value "luck_of_the_sea"
data modify storage ng:tmp enchlore.lvl set from storage ng:tmp mainhand.components."minecraft:custom_data".enchantments."minecraft:luck_of_the_sea"
function ng:gems/enchs_addlore/addlore with storage ng:tmp enchlore