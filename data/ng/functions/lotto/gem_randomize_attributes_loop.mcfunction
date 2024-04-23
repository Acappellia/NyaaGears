execute store result score $min random store result score $max random store result score #att_amount ng run data get storage ng:tmp attribute_modifiers_random[0].amount 100
scoreboard players operation $min random /= #3 ng
scoreboard players operation $min random *= #2 ng
function ng:random_uniform
execute store result storage ng:tmp attribute_modifiers_random[0].amount double 0.01 run scoreboard players get $out random

data modify storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers append from storage ng:tmp attribute_modifiers_random[0]
data remove storage ng:tmp attribute_modifiers_random[0]
execute if data storage ng:tmp attribute_modifiers_random[0] run function ng:lotto/gem_randomize_attributes_loop