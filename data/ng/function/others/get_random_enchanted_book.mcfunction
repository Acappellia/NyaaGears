##give item
forceload add 1600 1600
setblock 1600 0 1600 bedrock
setblock 1600 0 1600 shulker_box{Items:[{Slot:0b,count:1,id:"minecraft:book"}]}
item modify block 1600 0 1600 container.0 ng:random_enchant_book
execute anchored eyes positioned ^ ^-0.3 ^0.5 run loot spawn ~ ~ ~ mine 1600 0 1600 stone[minecraft:custom_data={drop_contents:1}]
setblock 1600 0 1600 bedrock

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "附魔书已鉴定！","color": "#81ffc6"}]