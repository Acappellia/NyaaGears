advancement revoke @s only ng:get_head

playsound entity.item_frame.remove_item player @a ~ ~ ~ 1 1

forceload add 1600 1600
setblock 1600 0 1600 bedrock
setblock 1600 0 1600 shulker_box
item replace block 1600 0 1600 container.0 with player_head 1
item modify block 1600 0 1600 container.0 ng:set_skull

loot spawn ~ ~1.6 ~ mine 1600 0 1600 stone[minecraft:custom_data={drop_contents:1}]
setblock 1600 0 1600 bedrock



