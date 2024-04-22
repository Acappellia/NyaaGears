data modify storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers append value {}
data modify storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[-1].name set from storage ng:tmp mainhand.components."minecraft:custom_data".StoredAttributeModifiers[0].Name
data modify storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[-1].type set from storage ng:tmp mainhand.components."minecraft:custom_data".StoredAttributeModifiers[0].AttributeName
data modify storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[-1].uuid set from storage ng:tmp mainhand.components."minecraft:custom_data".StoredAttributeModifiers[0].UUID
data modify storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[-1].amount set from storage ng:tmp mainhand.components."minecraft:custom_data".StoredAttributeModifiers[0].Amount
data modify storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[-1].slot set from storage ng:tmp mainhand.components."minecraft:custom_data".StoredAttributeModifiers[0].Slot

#define score_holder #att_upd_operation
execute store result score #att_upd_operation ng run data get storage ng:tmp mainhand.components."minecraft:custom_data".StoredAttributeModifiers[0].Operation
execute if score #att_upd_operation ng matches 0 run data modify storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[-1].operation set value "add_value"
execute if score #att_upd_operation ng matches 1 run data modify storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[-1].operation set value "add_multiplied_base"
execute if score #att_upd_operation ng matches 2 run data modify storage ng:tmp mainhand.components."minecraft:custom_data".attribute_modifiers[-1].operation set value "add_multiplied_total"

data remove storage ng:tmp mainhand.components."minecraft:custom_data".StoredAttributeModifiers[0]
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".StoredAttributeModifiers[0] run function ng:gems/update_attribute_loop