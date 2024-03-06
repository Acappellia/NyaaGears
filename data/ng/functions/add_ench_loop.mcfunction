data modify storage ng:tmp offhand.tag.Enchantments append from storage ng:tmp mainhand.tag.StoredEnchantments[0]
data remove storage ng:tmp mainhand.tag.StoredEnchantments[0]
execute if data storage ng:tmp mainhand.tag.StoredEnchantments[0] run function ng:add_ench_loop