$data modify storage ng:tmp daily.item_3 set from storage ng:daily items[$(index)]
execute store result storage ng:tmp daily.count_3 int 1 run random value 1..5