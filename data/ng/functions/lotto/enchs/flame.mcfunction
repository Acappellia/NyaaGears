execute store result score $min random store result score $max random run data get storage ng:tmp mainhand.components."minecraft:custom_data".enchantments."minecraft:flame"
scoreboard players operation $min random /= #2 ng
execute if score $min random matches ..0 run scoreboard players set $min random 1
function ng:random_uniform
execute store result storage ng:tmp mainhand.components."minecraft:custom_data".enchantments."minecraft:flame" int 1 run scoreboard players get $out random