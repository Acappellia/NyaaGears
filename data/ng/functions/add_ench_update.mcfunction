#define score_holder #ench_lvl_origin
#define score_holder #ench_lvl_update

$execute store result score #ench_lvl_origin ng run data get storage ng:tmp offhand.tag.Enchantments[$(index)].lvl
execute store result score #ench_lvl_update ng run data get storage ng:tmp mainhand.tag.Enchantments_store[0].lvl

execute if score #ench_lvl_origin ng > #ench_lvl_update ng run return 1
$execute if score #ench_lvl_origin ng < #ench_lvl_update ng run data modify storage ng:tmp offhand.tag.Enchantments[$(index)].lvl set from storage ng:tmp mainhand.tag.Enchantments_store[0].lvl
$execute if score #ench_lvl_origin ng = #ench_lvl_update ng store result storage ng:tmp offhand.tag.Enchantments[$(index)].lvl short 1 run scoreboard players add #ench_lvl_update ng 1
