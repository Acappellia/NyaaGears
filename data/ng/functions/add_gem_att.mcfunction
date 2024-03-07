data modify storage ng:tmp mainhand.tag.StoredAttributeModifiers append from storage ng:tmp mainhand.tag.AttributeModifiers[0]

#define score_holder #att_operation
#define score_holder #att_amount
#define score_holder #att_negative

scoreboard players reset #att_negative ng
execute store result score #att_operation ng run data get storage ng:tmp mainhand.tag.AttributeModifiers[0].Operation
execute store result score #att_amount ng run data get storage ng:tmp mainhand.tag.AttributeModifiers[0].Amount 100
execute if score #att_amount ng matches ..-1 run scoreboard players set #att_negative ng 1
execute if score #att_negative ng matches 1 run scoreboard players operation #att_amount ng *= #-1 ng
execute if score #att_operation ng matches 0 store result storage ng:tmp mainhand.tag.AttributeModifiers[0].Amount double 0.01 run scoreboard players get #att_amount ng
execute if score #att_operation ng matches 1..2 store result storage ng:tmp mainhand.tag.AttributeModifiers[0].Amount double 1 run scoreboard players get #att_amount ng

function ng:addlore_att with storage ng:tmp mainhand.tag.AttributeModifiers[0]

data remove storage ng:tmp mainhand.tag.AttributeModifiers[0]
execute if data storage ng:tmp mainhand.tag.AttributeModifiers[0] run function ng:add_gem_att