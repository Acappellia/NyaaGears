$data modify storage ng:tmp daily.item_9 set from storage ng:daily items[$(index)]
execute store result storage ng:tmp daily.count_9 int 1 run random value 1..5