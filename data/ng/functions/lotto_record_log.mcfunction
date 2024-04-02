data modify storage ng:logs lotto_logs append value {}
data modify storage ng:logs lotto_logs[-1].random set from storage ng:tmp lotto
data modify storage ng:logs lotto_logs[-1].name set from storage ng:tmp mainhand.tag.display.Name
data modify storage ng:logs lotto_logs[-1].ench set from storage ng:tmp mainhand.tag.Enchantments_store
data modify storage ng:logs lotto_logs[-1].attr set from storage ng:tmp mainhand.tag.StoredAttributeModifiers