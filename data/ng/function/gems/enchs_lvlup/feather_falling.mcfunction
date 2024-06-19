execute store result score #ench_lvl_origin ng run data get storage ng:tmp offhand.components."minecraft:enchantments".levels."minecraft:feather_falling"
execute store result score #ench_lvl_update ng run data get storage ng:tmp mainhand.components."minecraft:custom_data".enchantments."minecraft:feather_falling"

execute store result storage ng:tmp offhand.components."minecraft:enchantments".levels."minecraft:feather_falling" int 1 run scoreboard players operation #ench_lvl_origin ng += #ench_lvl_update ng