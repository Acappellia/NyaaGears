data modify storage ng:tmp checkoperation set value ["add_value","add_multiplied_base","add_multiplied_total"]
scoreboard players reset #checkstring ng
execute store success score #checkstring ng run data modify storage ng:tmp checkoperation[0] set from storage ng:tmp attribute_modifiers_addlore[0].operation
execute unless score #checkstring ng matches 1 run scoreboard players set #att_operation ng 0
execute unless score #checkstring ng matches 1 run return 1

scoreboard players reset #checkstring ng
execute store success score #checkstring ng run data modify storage ng:tmp checkoperation[1] set from storage ng:tmp attribute_modifiers_addlore[0].operation
execute unless score #checkstring ng matches 1 run scoreboard players set #att_operation ng 1
execute unless score #checkstring ng matches 1 run return 1

scoreboard players reset #checkstring ng
execute store success score #checkstring ng run data modify storage ng:tmp checkoperation[2] set from storage ng:tmp attribute_modifiers_addlore[0].operation
execute unless score #checkstring ng matches 1 run scoreboard players set #att_operation ng 2