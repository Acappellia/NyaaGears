data remove storage ng:tmp mainhand
$data modify storage ng:tmp mainhand set from storage ng:lottos types[$(type)].common[$(index)]

execute if data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem run function ng:lotto/gem_randomize_value