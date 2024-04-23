advancement revoke @s only ng:eat_food

playsound entity.chicken.egg player @a ~ ~ ~ 1 1

#define score_holder #potato_lines

execute store result score #potato_lines ng run random value 1..320

execute if score #potato_lines ng matches 1 run give @s poisonous_potato[minecraft:item_name='{"translate":"item.minecraft.baked_potato"}',minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"translate":"item.minecraft.baked_potato","color":"light_purple","italic":false}]',minecraft:lore=['[{"text":"喵窝土豆，最好吃的土豆！","color":"yellow","bold":true}]','""','[{"text":"凭土豆皮可享免费续盘","color":"dark_gray"}]']]
execute if score #potato_lines ng matches 2 run give @s potato[minecraft:item_name='{"translate":"item.minecraft.baked_potato"}',minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"translate":"item.minecraft.potato","color":"light_purple","italic":false}]',minecraft:lore=['[{"text":"喵窝土豆，最好吃的土豆！","color":"yellow","bold":true}]','[{"text":"这份好像没烤熟","color":"#444444","strikethrough": true}]','""','[{"text":"凭土豆皮可享免费续盘","color":"dark_gray"}]']]
execute if score #potato_lines ng matches 3 run give @s baked_potato[minecraft:food={nutrition:5,saturation:5,eat_seconds:0.06},minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"text":"香香的烤土豆","color":"light_purple","italic":false}]',minecraft:lore=['[{"text":"兄弟，你好香~","color":"yellow","bold":true}]','""','[{"text":"凭土豆皮可享免费续盘","color":"dark_gray"}]']]
execute if score #potato_lines ng matches 4 run give @s baked_potato[minecraft:food={nutrition:20,saturation:20,effects:[{effect:{id:"absorption",amplifier:4,duration:3600}}]},minecraft:enchantment_glint_override=true,minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"text":"黄金烤土豆","color":"yellow","italic":false}]',minecraft:lore=['[{"text":"喵窝土豆，最好吃的土豆！","color":"yellow","bold":true}]','[{"text":"金牌大厨 倾力烤制","color":"gold","bold":true}]','""','[{"text":"凭土豆皮可享免费续盘","color":"dark_gray"}]']]
execute if score #potato_lines ng matches 5 run give @s potato[minecraft:food={nutrition:0,saturation:0},minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"text":"生姜","color":"white","italic":false}]',minecraft:lore=['[{"text":"你一度怀疑这是不是在玩cosplay","color":"gray","bold":true}]','[{"text":"但真的看着就不想吃","color":"gray","bold":true}]','""','[{"text":"凭土豆皮可享免费续盘","color":"dark_gray"}]']]
execute if score #potato_lines ng matches 6 run give @s baked_potato[minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"text":"忧郁的烤土豆","color":"light_purple","italic":false}]',minecraft:lore=['[{"text":"行走在这个世界上，自己是一名漫无目的的过客。","color":"#CCCCCC","bold":true}]','[{"text":"注定要经历无数的离别和重逢，却又总是在离别中找不到归宿。","color":"#BBBBBB","bold":true}]','[{"text":"试图用诗句来描绘生活，却发现生活是一篇无法抒情的文章。","color":"#AAAAAA","bold":true}]','[{"text":"因为我自私且双标，所以只要出问题就一定是别人干的。","color":"#999999","bold":true}]','[{"text":"寻找别人的错误使我快乐，欣赏完美的自我使我孤独。","color":"#888888","bold":true}]','""','[{"text":"曾试图穿越充满雾霭的早晨，触摸远方的阳光。","color":"#777777","bold":true}]','[{"text":"但到达的时候，总发现阳光已不见，留下了无尽阴霾。","color":"#666666","bold":true}]','[{"text":"我意识到有些东西，无论多么努力都无法触及。","color":"#555555","bold":true}]','[{"text":"我的心就像被遗忘的废墟，寂静而又荒凉，等待着一丝光线照进无尽的黑暗。","color":"#444444","bold":true}]','[{"text":"世界上的人们忙碌地交织在一起，孤独却是世界的回答。","color":"#333333","bold":true}]','[{"text":"我渴望理解，渴望被理解，但这个世界上真正的理解无法被理解。","color":"#222222","bold":true}]','[{"text":"试图用言语表达自己，却发现言语是最大的误解。","color":"#111111","bold":true}]','[{"text":"我们像是夜空中的星辰，看似靠得很近，实则相隔亿万光年。","color":"#000000","bold":true}]']]
execute if score #potato_lines ng matches 7 run give @s baked_potato[minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"text":"土豆大王","color":"light_purple","italic":false}]',minecraft:lore=['[{"text":"曾经是一位非常喜欢种土豆的玩家","color":"green","bold":true}]','[{"text":"直到最后自己也变成了土豆","color":"yellow","bold":true}]','""','[{"text":"凭土豆皮可享免费续盘","color":"dark_gray"}]']]
execute if score #potato_lines ng matches 8 run give @s cookie[minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"translate":"item.minecraft.cookie","color":"light_purple","italic":false}]',minecraft:lore=['[{"text":"喵窝曲奇，最好吃的曲奇！","color":"yellow","bold":true}]','""','[{"text":"凭曲奇头可享免费续盘","color":"dark_gray","strikethrough": true}]']]
execute if score #potato_lines ng matches 9 run give @s baked_potato[minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"text":"无尽的烤土豆","color":"light_purple","italic":false}]',minecraft:lore=['[{"text":"吃不完的土豆！","color":"green","bold":true}]','""','[{"text":"凭土豆皮可享免费续盘","color":"dark_gray"}]']]
execute if score #potato_lines ng matches 10 run give @s baked_potato[minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"text":"卡卡土豆","color":"light_purple","italic":false}]',minecraft:lore=['[{"text":"我来的时候江水很平静","color":"gray","bold":true}]','""','[{"text":"凭土豆皮可享免费续盘","color":"dark_gray"}]']]
execute if score #potato_lines ng matches 11 run give @s baked_potato[minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"text":"弱小的烤土豆","color":"light_purple","italic":false}]',minecraft:lore=['[{"text":"我们太弱小了…… 没有力量……——！","color":"gray","bold":true}]','""','[{"text":"凭土豆皮可享免费续盘","color":"dark_gray"}]']]
execute if score #potato_lines ng matches 12 run give @s baked_potato[minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"text":"大祥土豆","color":"light_purple","italic":false}]',minecraft:lore=['[{"text":"\\"我今天是来宣布一件事的……\\"","color":"dark_aqua","bold":true}]','[{"text":"\\"……满脑子都想着土豆呢\\"","color":"dark_aqua","bold":true}]','""','[{"text":"凭土豆皮可享免费续盘","color":"dark_gray"}]']]
execute if score #potato_lines ng matches 13 run give @s baked_potato[minecraft:food={nutrition:5,saturation:5,eat_seconds:180},minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"text":"风干的烤土豆","color":"gray","italic":false}]',minecraft:lore=['[{"text":"因为放太久所以风干了","color":"gray","bold":true}]','[{"text":"非常坚硬，根本咬不动","color":"gray","bold":true}]','""','[{"text":"凭土豆皮可享免费续盘","color":"dark_gray"}]']]
execute if score #potato_lines ng matches 14 run give @s raw_iron[minecraft:item_name='{"translate":"item.minecraft.baked_potato"}',minecraft:food={nutrition:5,saturation:5},minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"translate":"item.minecraft.baked_potato","color":"light_purple","italic":false}]',minecraft:lore=['[{"text":"喵窝土豆，最好吃的土豆！","color":"yellow","bold":true}]','""','[{"text":"凭土豆皮可享免费续盘","color":"dark_gray"}]','""','[{"text":"—— WAIT WHAT?","color":"gray"}]']]

execute if score #potato_lines ng matches 15.. run give @s baked_potato[minecraft:custom_data={ng_inf:1},minecraft:custom_name='[{"translate":"item.minecraft.baked_potato","color":"light_purple","italic":false}]',minecraft:lore=['[{"text":"喵窝土豆，最好吃的土豆！","color":"yellow","bold":true}]','""','[{"text":"凭土豆皮可享免费续盘","color":"dark_gray"}]']]