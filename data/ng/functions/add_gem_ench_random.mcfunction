#define score_holder #lotto_enchlvl
#define score_holder #lotto_enchlvl_min
execute store result score #lotto_enchlvl_min ng store result score #lotto_enchlvl ng store result storage ng:tmp lotto.enchlvl int 1 run data get storage ng:tmp mainhand.tag.Enchantments[0].lvl
scoreboard players operation #lotto_enchlvl_min ng /= #2 ng
execute if score #lotto_enchlvl_min ng matches ..0 run scoreboard players set #lotto_enchlvl_min ng 1
execute store result storage ng:tmp lotto.enchlvl_min int 1 run scoreboard players get #lotto_enchlvl_min ng
execute if score #lotto_enchlvl ng matches 2.. run function ng:lotto_enchpool with storage ng:tmp lotto

data modify storage ng:tmp mainhand.tag.StoredEnchantments append from storage ng:tmp mainhand.tag.Enchantments[0]

scoreboard players reset #checkstring ng
data modify storage ng:tmp checkstring set string storage ng:tmp mainhand.tag.Enchantments[0].id 0 10
execute store success score #checkstring ng run data modify storage ng:tmp checkstring set value "minecraft:"
execute unless score #checkstring ng matches 1 run data modify storage ng:tmp mainhand.tag.Enchantments[0].id set string storage ng:tmp mainhand.tag.Enchantments[0].id 10
function ng:addlore_ench with storage ng:tmp mainhand.tag.Enchantments[0]

data remove storage ng:tmp mainhand.tag.Enchantments[0]
execute if data storage ng:tmp mainhand.tag.Enchantments[0] run function ng:add_gem_ench_random