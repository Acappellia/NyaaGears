data modify storage ng:tmp mainhand.tag.StoredAttributeModifiers append from storage ng:tmp mainhand.tag.AttributeModifiers[0]

#todo addlore

data remove storage ng:tmp mainhand.tag.AttributeModifiers[0]
execute if data storage ng:tmp mainhand.tag.AttributeModifiers[0] run function ng:add_gem_att