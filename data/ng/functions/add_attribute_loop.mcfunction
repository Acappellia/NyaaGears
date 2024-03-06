data modify storage ng:tmp offhand.tag.AttributeModifiers append from storage ng:tmp mainhand.tag.StoredAttributeModifiers[0]
data remove storage ng:tmp mainhand.tag.StoredAttributeModifiers[0]
execute if data storage ng:tmp mainhand.tag.StoredAttributeModifiers[0] run function ng:add_attribute_loop