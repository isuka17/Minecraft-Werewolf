# 初期アイテムを配布
give @a[tag=mwd_join] bow{Enchantments:[{id:"power",lvl:255},{id:"infinity",lvl:1},{id:"vanishing_curse",lvl:1}],Unbreakable:1,display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 人狼用弓","italic":false,"color":"white"}]'}}
give @a[tag=mwd_join] arrow{Enchantments:[{id:"vanishing_curse",lvl:1}],display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 人狼用矢","italic":false,"color":"white"}]'}}
execute unless entity @a[scores={mwd_roles_neutral=3}] run give @a[tag=mwd_join] nether_star{display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 能力を使用","color":"white","italic":false}]'},Enchantments:[{id:"vanishing_curse",lvl:1}]}
execute if score アメジスト mwd_settings matches 1 run give @a[tag=mwd_join] amethyst_shard{display:{Name:'[{"text":"[全員配布] ","color":"red","italic":false},{"text":"アメジスト","color":"white"}]',Lore:['{"text":"4つ集めるとクラフトでき、","color":"white","italic":false}','{"text":"アイテムを入手したり、","color":"white","italic":false}','{"text":"能力を再使用したりすることができる。","color":"white","italic":false}']}} 1
execute if score アメジスト mwd_settings matches 2 run give @a[tag=mwd_join] amethyst_shard{display:{Name:'[{"text":"[全員配布] ","color":"red","italic":false},{"text":"アメジスト","color":"white"}]',Lore:['{"text":"4つ集めるとクラフトでき、","color":"white","italic":false}','{"text":"アイテムを入手したり、","color":"white","italic":false}','{"text":"能力を再使用したりすることができる。","color":"white","italic":false}']}} 2

# 番号を割り振り
scoreboard players reset @a mwd_items_given
scoreboard players set @a[tag=mwd_join] mwd_items_given 0
execute as @a[tag=mwd_join,sort=random] store result score @s mwd_items_given if entity @a[scores={mwd_items_given=0}]

# 参加者の位置にspecial_itemsを召喚
execute at @a[tag=mwd_join] run summon item ~ ~1 ~ {Tags:["special_items"],Item:{id:"minecraft:bedrock",Count:1b}}

# special_itemsにストレージに保存しているnbtを入れる
execute as @a[scores={mwd_items_given=1}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 1
execute as @a[scores={mwd_items_given=2}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 2
execute as @a[scores={mwd_items_given=3}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 3
execute as @a[scores={mwd_items_given=4}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 4
execute as @a[scores={mwd_items_given=5}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 5
execute as @a[scores={mwd_items_given=6}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 6
execute as @a[scores={mwd_items_given=7}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 7
execute as @a[scores={mwd_items_given=8}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 8
execute as @a[scores={mwd_items_given=9}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 9
execute as @a[scores={mwd_items_given=10}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 10
execute as @a[scores={mwd_items_given=11}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 11
execute as @a[scores={mwd_items_given=12}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 12
execute as @a[scores={mwd_items_given=13}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 13
execute as @a[scores={mwd_items_given=14}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 14
execute as @a[scores={mwd_items_given=15}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 15
execute as @a[scores={mwd_items_given=16}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage mwd_items 16

# special_itemsの数を1に変更
execute as @e[type=item,tag=special_items] run data modify entity @s Item.Count set value 1b

# special_itemsをkill
kill @e[type=item,tag=special_items,nbt={Item:{id:"minecraft:bedrock"}}]