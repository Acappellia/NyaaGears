data modify storage ng:tmp mainhand.tag.StoredEnchantments append from storage ng:tmp mainhand.tag.Enchantments[0]

#todo addlore

data remove storage ng:tmp mainhand.tag.Enchantments[0]
execute if data storage ng:tmp mainhand.tag.Enchantments[0] run function ng:add_gem_ench