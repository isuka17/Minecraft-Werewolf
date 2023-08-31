# 通知
tellraw @s [{"text":"アイテム設定を保存しました。","color":"yellow"}]

# 再配置
item replace entity @s enderchest.18 with structure_void{display:{Name:'{"text":"アイテム設定を保存","italic":false,"color":"yellow"}'},mwd_settings:1}

# EnderItemsをStorageに保存
data modify storage mwd_items 1 set from entity @s EnderItems[{Slot:1b}]
data modify storage mwd_items 2 set from entity @s EnderItems[{Slot:2b}]
data modify storage mwd_items 3 set from entity @s EnderItems[{Slot:3b}]
data modify storage mwd_items 4 set from entity @s EnderItems[{Slot:4b}]
data modify storage mwd_items 5 set from entity @s EnderItems[{Slot:5b}]
data modify storage mwd_items 6 set from entity @s EnderItems[{Slot:6b}]
data modify storage mwd_items 7 set from entity @s EnderItems[{Slot:7b}]
data modify storage mwd_items 8 set from entity @s EnderItems[{Slot:8b}]
data modify storage mwd_items 9 set from entity @s EnderItems[{Slot:10b}]
data modify storage mwd_items 10 set from entity @s EnderItems[{Slot:11b}]
data modify storage mwd_items 11 set from entity @s EnderItems[{Slot:12b}]
data modify storage mwd_items 12 set from entity @s EnderItems[{Slot:13b}]
data modify storage mwd_items 13 set from entity @s EnderItems[{Slot:14b}]
data modify storage mwd_items 14 set from entity @s EnderItems[{Slot:15b}]
data modify storage mwd_items 15 set from entity @s EnderItems[{Slot:16b}]
data modify storage mwd_items 16 set from entity @s EnderItems[{Slot:17b}]