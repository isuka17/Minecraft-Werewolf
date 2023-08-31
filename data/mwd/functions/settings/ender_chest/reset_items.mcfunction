# 通知
tellraw @s {"text":"アイテム設定をリセットしました。","color":"red"}

# 再配置
item replace entity @s enderchest.0 with barrier{display:{Name:'{"text":"アイテム設定をリセット","italic":false,"color":"red"}'},mwd_settings:1}

# ストレージを削除
data remove storage mwd_items 1
data remove storage mwd_items 2
data remove storage mwd_items 3
data remove storage mwd_items 4
data remove storage mwd_items 5
data remove storage mwd_items 6
data remove storage mwd_items 7
data remove storage mwd_items 8
data remove storage mwd_items 9
data remove storage mwd_items 10
data remove storage mwd_items 11
data remove storage mwd_items 12
data remove storage mwd_items 13
data remove storage mwd_items 14
data remove storage mwd_items 15
data remove storage mwd_items 16

# 板ガラスを再配置
item replace entity @s enderchest.1 with glass_pane{display:{Name:'{"text":"1人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.2 with glass_pane{display:{Name:'{"text":"2人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.3 with glass_pane{display:{Name:'{"text":"3人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.4 with glass_pane{display:{Name:'{"text":"4人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.5 with glass_pane{display:{Name:'{"text":"5人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.6 with glass_pane{display:{Name:'{"text":"6人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.7 with glass_pane{display:{Name:'{"text":"7人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.8 with glass_pane{display:{Name:'{"text":"8人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.10 with glass_pane{display:{Name:'{"text":"9人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.11 with glass_pane{display:{Name:'{"text":"10人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.12 with glass_pane{display:{Name:'{"text":"11人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.13 with glass_pane{display:{Name:'{"text":"12人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.14 with glass_pane{display:{Name:'{"text":"13人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.15 with glass_pane{display:{Name:'{"text":"14人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.16 with glass_pane{display:{Name:'{"text":"15人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}
item replace entity @s enderchest.17 with glass_pane{display:{Name:'{"text":"16人以上参加で出現","italic":false}',Lore:['{"text":"1つのアイテムにつき","color":"white","italic":false}','{"text":"1つのスロットにのみ配置してください。","color":"white","italic":false}']},mwd_settings:1}