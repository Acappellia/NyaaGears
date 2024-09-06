forceload add 0 0
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,count:1,id:"minecraft:stone"}]}
item modify block 0 -64 0 container.0 ng:gem_insert_addlore
$data modify storage ng:tmp offhand.components."minecraft:lore"[$(lore_index)] set from block 0 -64 0 Items[0].components."minecraft:lore"[0]
setblock 0 -64 0 bedrock