data remove storage ng:tmp mainhand

data modify storage ng:tmp mainhand set from entity @s SelectedItem
execute unless data storage ng:tmp mainhand.tag.ng_gem_upg run return -1

data modify storage ng:lotto_gem_upg items append from storage ng:tmp mainhand

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "gold"},{"text": "] ","color": "white"},{"text": "已加入奖池 — ","color": "white"},{"storage": "ng:tmp","nbt":"mainhand.tag.display.Name","interpret": true}]