data modify storage ng:tmp mainhand.tag.StoredEnchantments append from storage ng:tmp mainhand.tag.Enchantments[0]

data modify storage ng:tmp mainhand.tag.Enchantments[0].id set string storage ng:tmp mainhand.tag.Enchantments[0].id 10
function ng:addlore_ench with storage ng:tmp mainhand.tag.Enchantments[0]

data remove storage ng:tmp mainhand.tag.Enchantments[0]
execute if data storage ng:tmp mainhand.tag.Enchantments[0] run function ng:add_gem_ench