#define score_holder #att_operation
#define score_holder #att_amount
#define score_holder #att_negative

scoreboard players reset #att_negative ng
function ng:gems/gem_addlore_attr_checkoperation
execute store result score #att_amount ng run data get storage ng:tmp attribute_modifiers_addlore[0].amount 100
execute if score #att_amount ng matches ..-1 run scoreboard players set #att_negative ng 1
execute if score #att_negative ng matches 1 run scoreboard players operation #att_amount ng *= #-1 ng
execute if score #att_operation ng matches 0 store result storage ng:tmp attribute_modifiers_addlore[0].amount double 0.01 run scoreboard players get #att_amount ng
execute if score #att_operation ng matches 1..2 store result storage ng:tmp attribute_modifiers_addlore[0].Amount double 1 run scoreboard players get #att_amount ng

#define score_holder #checkstring
scoreboard players reset #checkstring ng
data modify storage ng:tmp checkstring set string storage ng:tmp attribute_modifiers_addlore[0].type 0 10
execute store success score #checkstring ng run data modify storage ng:tmp checkstring set value "minecraft:"
execute unless score #checkstring ng matches 1 run data modify storage ng:tmp attribute_modifiers_addlore[0].type set string storage ng:tmp attribute_modifiers_addlore[0].type 10
function ng:gems/gem_addlore_attr_lore with storage ng:tmp attribute_modifiers_addlore[0]

data remove storage ng:tmp attribute_modifiers_addlore[0]
execute if data storage ng:tmp attribute_modifiers_addlore[0] run function ng:gems/gem_addlore_attr_loop