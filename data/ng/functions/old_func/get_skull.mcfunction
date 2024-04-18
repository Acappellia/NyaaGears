advancement revoke @s only ng:get_head

playsound entity.item_frame.remove_item player @a ~ ~ ~ 1 1

setblock 0 -64 0 shulker_box
item replace block 0 -64 0 container.0 with player_head 1
item modify block 0 -64 0 container.0 ng:set_skull

loot spawn ~ ~1.6 ~ mine 0 -64 0 stone{drop_contents:1}

setblock 0 -64 0 bedrock