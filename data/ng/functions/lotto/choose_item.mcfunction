##check unique
#define score_holder #lotto_isunique
scoreboard players reset #lotto_isunique ng
$execute if data storage ng:lottos types[$(type)].unique run function ng:lotto/choose_item_unique with storage ng:tmp lotto_info
execute if score #lotto_isunique ng matches 1.. run return 1

##choose common item
$execute store result score $max random if data storage ng:lottos types[$(type)].common[]
scoreboard players remove $max random 1
scoreboard players set $min random 0
function ng:random_uniform
execute store result storage ng:tmp lotto_info.index int 1 run scoreboard players get $out random
function ng:lotto/copy_data with storage ng:tmp lotto_info