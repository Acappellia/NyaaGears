##unique item chance
#define score_holder #unique_chance
$execute store result score #unique_chance ng run data get storage ng:lottos types[$(type)].unique.chance
execute unless score #unique_chance ng matches 1.. run scoreboard players set #unique_chance ng 10
scoreboard players set $max random 10000
scoreboard players set $min random 1
function ng:random_uniform
execute unless score $out random <= #unique_chance ng run return 1

##copy item
$data modify storage ng:tmp mainhand set from storage ng:lottos types[$(type)].unique.item
scoreboard players set #lotto_isunique ng 1