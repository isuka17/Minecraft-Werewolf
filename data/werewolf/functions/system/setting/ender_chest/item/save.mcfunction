#アイテムを保存

# EnderItemsをStorageに保存
data modify storage item 1 set from entity @s EnderItems[{Slot:1b}]
data modify storage item 2 set from entity @s EnderItems[{Slot:2b}]
data modify storage item 3 set from entity @s EnderItems[{Slot:3b}]
data modify storage item 4 set from entity @s EnderItems[{Slot:4b}]
data modify storage item 5 set from entity @s EnderItems[{Slot:5b}]
data modify storage item 6 set from entity @s EnderItems[{Slot:6b}]
data modify storage item 7 set from entity @s EnderItems[{Slot:7b}]
data modify storage item 8 set from entity @s EnderItems[{Slot:8b}]
data modify storage item 9 set from entity @s EnderItems[{Slot:9b}]
data modify storage item 10 set from entity @s EnderItems[{Slot:10b}]
data modify storage item 11 set from entity @s EnderItems[{Slot:11b}]
data modify storage item 12 set from entity @s EnderItems[{Slot:12b}]
data modify storage item 13 set from entity @s EnderItems[{Slot:13b}]
data modify storage item 14 set from entity @s EnderItems[{Slot:14b}]
data modify storage item 15 set from entity @s EnderItems[{Slot:15b}]
data modify storage item 16 set from entity @s EnderItems[{Slot:16b}]

# 後処理
tellraw @s [{"text":"[Werewolf] ","color":"red"},{"text":"アイテム設定を保存しました。","color":"yellow"}]
item replace entity @s enderchest.18 with structure_void{display:{Name:'{"text":"アイテム設定を保存","italic":false,"color":"yellow"}'},pagechange:1}