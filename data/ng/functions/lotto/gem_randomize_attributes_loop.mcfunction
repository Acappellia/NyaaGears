execute store result score #att_amount ng run data get storage ng:tmp attribute_modifiers_random[0].amount 100
execute if score #att_amount ng matches ..0 run scoreboard players operation #att_amount ng *= -1 ng
execute if score #att_amount ng matches 0..9 store result score $min random store result score $max random run data get storage ng:tmp attribute_modifiers_random[0].amount 1000
execute if score #att_amount ng matches 10..99 store result score $min random store result score $max random run data get storage ng:tmp attribute_modifiers_random[0].amount 100
execute if score #att_amount ng matches 100..999 store result score $min random store result score $max random run data get storage ng:tmp attribute_modifiers_random[0].amount 10
execute if score #att_amount ng matches 1000.. store result score $min random store result score $max random run data get storage ng:tmp attribute_modifiers_random[0].amount 1

scoreboard players operation $min random /= #2 ng
function ng:random_uniform
execute if score #att_amount ng matches 0..9 store result storage ng:tmp attribute_modifiers_random[0].amount double 0.001 run scoreboard players get $out random
execute if score #att_amount ng matches 10..99 store result storage ng:tmp attribute_modifiers_random[0].amount double 0.01 run scoreboard players get $out random
execute if score #att_amount ng matches 100..999 store result storage ng:tmp attribute_modifiers_random[0].amount double 0.1 run scoreboard players get $out random
execute if score #att_amount ng matches 1000.. store result storage ng:tmp attribute_modifiers_random[0].amount double 1 run scoreboard players get $out random

data modify storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers append from storage ng:tmp attribute_modifiers_random[0]
data remove storage ng:tmp attribute_modifiers_random[0]
execute if data storage ng:tmp attribute_modifiers_random[0] run function ng:lotto/gem_randomize_attributes_loop