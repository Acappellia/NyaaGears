data modify storage ng:tmp offhand.components."minecraft:custom_data".ng_slots append value {occupied:0}

data modify storage ng:tmp offhand.components."minecraft:lore" append value ""
execute store result storage ng:tmp offhand.components."minecraft:custom_data".ng_slots[-1].lore_index int 1 if data storage ng:tmp offhand.components."minecraft:lore"[]

data modify storage ng:tmp offhand.components."minecraft:lore" append value [{"text": "+ ","color": "gray","italic": false},{"text": "空的祝福栏位","color": "#aaffcc","italic": true}]
#data modify storage ng:tmp offhand.components."minecraft:lore" append value '[{"text": "-< ","color": "gray","italic": false},{"text": "☆ ☆ ☆","color": "dark_gray","italic": false},{"text": " >-","color": "gray","italic": false}]'
