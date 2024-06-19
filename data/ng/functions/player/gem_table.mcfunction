playsound item.book.page_turn block @s ~ ~ ~ 1 1.5

##copy data
data remove storage ng:tmp mainhand
data remove storage ng:tmp offhand

##CHANGED HANDS!
data modify storage ng:tmp offhand set from entity @s SelectedItem
data modify storage ng:tmp mainhand set from entity @s Inventory[{Slot:-106b}]

##filter invalid items
execute if data storage ng:tmp offhand.components."minecraft:custom_data".nw_fur_id run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "滚犊子吧 ","color": "#dd66dd"},{"text": "\"你整的啥物品啊\"","color": "gold"},{"text": ";","color": "yellow"}]
execute if data storage ng:tmp offhand.components."minecraft:custom_data".nw_fur_id run return -1

<<<<<<< HEAD
execute if data storage ng:tmp offhand.components."minecraft:minecraft:writable_book_content" run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "滚犊子吧 ","color": "#dd66dd"},{"text": "\"你整的啥物品啊\"","color": "gold"},{"text": ";","color": "yellow"}]
execute if data storage ng:tmp offhand.components."minecraft:minecraft:writable_book_content" run return -1

execute if data storage ng:tmp offhand.components."minecraft:minecraft:written_book_content" run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "滚犊子吧 ","color": "#dd66dd"},{"text": "\"你整的啥物品啊\"","color": "gold"},{"text": ";","color": "yellow"}]
execute if data storage ng:tmp offhand.components."minecraft:minecraft:written_book_content" run return -1
=======
execute if data storage ng:tmp offhand.components."minecraft:writable_book_content" run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "滚犊子吧 ","color": "#dd66dd"},{"text": "\"你整的啥物品啊\"","color": "gold"},{"text": ";","color": "yellow"}]
execute if data storage ng:tmp offhand.components."minecraft:writable_book_content" run return -1

execute if data storage ng:tmp offhand.components."minecraft:written_book_content" run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "滚犊子吧 ","color": "#dd66dd"},{"text": "\"你整的啥物品啊\"","color": "gold"},{"text": ";","color": "yellow"}]
execute if data storage ng:tmp offhand.components."minecraft:written_book_content" run return -1
>>>>>>> 4ab01c8b1e45649327ffa79aa482050e0081cc09

execute if data storage ng:tmp offhand.components."minecraft:custom_data".ng_gem run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "滚犊子吧 ","color": "#dd66dd"},{"text": "\"你整的啥物品啊\"","color": "gold"},{"text": ";","color": "yellow"}]
execute if data storage ng:tmp offhand.components."minecraft:custom_data".ng_gem run return -1

execute if data storage ng:tmp offhand.components."minecraft:custom_data".ng_gem_upg run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "滚犊子吧 ","color": "#dd66dd"},{"text": "\"你整的啥物品啊\"","color": "gold"},{"text": ";","color": "yellow"}]
execute if data storage ng:tmp offhand.components."minecraft:custom_data".ng_gem_upg run return -1

execute if data storage ng:tmp offhand.components."minecraft:custom_data".ng_gem_slot run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "滚犊子吧 ","color": "#dd66dd"},{"text": "\"你整的啥物品啊\"","color": "gold"},{"text": ";","color": "yellow"}]
execute if data storage ng:tmp offhand.components."minecraft:custom_data".ng_gem_slot run return -1

##check hand
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem if data storage ng:tmp offhand.count run function ng:player/insert_gem
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_upg if data storage ng:tmp offhand.count run function ng:player/insert_gem_upgrade
execute if data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_slot if data storage ng:tmp offhand.count run function ng:player/open_slot

##invalid info
execute unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_upg unless data storage ng:tmp mainhand.components."minecraft:custom_data".ng_gem_slot run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "请将祝福相关材料放置在副手","color": "gray"}]
execute unless data storage ng:tmp offhand.count run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGears","color": "green"},{"text": "] ","color": "white"},{"text": "请将需要调整的物品放置在主手","color": "gray"}]