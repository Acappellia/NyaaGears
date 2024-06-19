$data modify storage ng:tmp daily.item_6 set from storage ng:daily items[$(index)]
execute store result storage ng:tmp daily.count_6 int 1 run random value 1..4