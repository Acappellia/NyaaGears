data modify storage ng:tmp mainhand.tag.Enchantments_store append from storage ng:tmp mainhand.tag.Enchantments[0]

scoreboard players reset #checkstring ng
data modify storage ng:tmp checkstring set string storage ng:tmp mainhand.tag.Enchantments[0].id 0 10
execute store success score #checkstring ng run data modify storage ng:tmp checkstring set value "minecraft:"
execute unless score #checkstring ng matches 1 run data modify storage ng:tmp mainhand.tag.Enchantments[0].id set string storage ng:tmp mainhand.tag.Enchantments[0].id 10
function ng:addlore_ench with storage ng:tmp mainhand.tag.Enchantments[0]

data remove storage ng:tmp mainhand.tag.Enchantments[0]
execute if data storage ng:tmp mainhand.tag.Enchantments[0] run function ng:add_gem_ench