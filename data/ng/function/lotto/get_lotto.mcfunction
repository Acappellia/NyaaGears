execute if score @s ng_lottocount matches 1 run playsound entity.ender_eye.death player @a ~ ~ ~ 1 0.8
execute unless score @s ng_lottocount matches 1 run playsound entity.armadillo.brush player @a ~ ~ ~ 1 1.2

scoreboard players remove @s ng_lottocount 1

##copy lotto data
data remove storage ng:tmp lotto_info
execute store result storage ng:tmp lotto_info.type int 1 run scoreboard players get @s ng_lottotype
function ng:lotto/choose_item with storage ng:tmp lotto_info

##give item
forceload add 0 0
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,count:1,id:"minecraft:stone"}]}
data modify block 0 -64 0 Items[0].id set from storage ng:tmp mainhand.id
data modify block 0 -64 0 Items[0].components set from storage ng:tmp mainhand.components
execute anchored eyes positioned ^ ^-0.3 ^0.5 run loot spawn ~ ~ ~ mine 0 -64 0 stone[minecraft:custom_data={drop_contents:1}]
setblock 0 -64 0 bedrock

##normal
data remove storage ng:tmp itemname
data modify storage ng:tmp itemname set from storage ng:tmp mainhand.components."minecraft:item_name"
data modify storage ng:tmp itemname set from storage ng:tmp mainhand.components."minecraft:custom_name"

execute unless score #lotto_isunique ng matches 1.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "获得物品 — ","color": "white"},{"storage": "ng:tmp","nbt":"itemname","interpret": true}]
execute unless score #lotto_isunique ng matches 1.. run return 1

##unique
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "获得独特奖励 — ","color": "#44aaff"},{"storage": "ng:tmp","nbt":"itemname","interpret": true},{"text": " !","color": "#44aaff"}]
playsound minecraft:item.trident.return player @a ~ ~ ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.5 1.5
execute anchored eyes positioned ^ ^-0.3 ^0.5 run particle sonic_boom ~ ~ ~ 0 0 0 0 1
execute anchored eyes positioned ^ ^-0.3 ^0.5 run particle minecraft:wax_off ~ ~ ~ 1 1 1 0 30
execute anchored eyes positioned ^ ^-0.3 ^0.5 run particle minecraft:dust{color:[0.0, 0.5, 1.0], scale:1.0} ~ ~ ~ 0.2 0.2 0.2 0 10