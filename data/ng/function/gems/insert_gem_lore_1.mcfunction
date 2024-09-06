forceload add 1600 1600
setblock 1600 0 1600 bedrock
setblock 1600 0 1600 shulker_box{Items:[{Slot:0b,count:1,id:"minecraft:stone"}]}
item modify block 1600 0 1600 container.0 ng:gem_insert_addlore
$data modify storage ng:tmp offhand.components."minecraft:lore"[$(lore_index)] set from block 1600 0 1600 Items[0].components."minecraft:lore"[0]
setblock 1600 0 1600 bedrock