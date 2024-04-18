data remove storage ng:tmp mainhand

data modify storage ng:tmp mainhand set from entity @s SelectedItem
execute unless data storage ng:tmp mainhand.tag.ng_gem run return -1

data modify storage ng:lotto_gem items append from storage ng:tmp mainhand
data remove storage ng:lotto_gem items[-1].tag.display.Lore
data modify storage ng:lotto_gem items[-1].tag.display.Lore set from storage ng:lotto_gem items[-1].tag.Lore_origin
data modify storage ng:lotto_gem items[-1].tag.Enchantments set from storage ng:lotto_gem items[-1].tag.Enchantments_store
data modify storage ng:lotto_gem items[-1].tag.AttributeModifiers set from storage ng:lotto_gem items[-1].tag.StoredAttributeModifiers
data remove storage ng:lotto_gem items[-1].tag.Enchantments_store
data remove storage ng:lotto_gem items[-1].tag.StoredAttributeModifiers

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "gold"},{"text": "] ","color": "white"},{"text": "已加入奖池 — ","color": "white"},{"storage": "ng:tmp","nbt":"mainhand.tag.display.Name","interpret": true}]