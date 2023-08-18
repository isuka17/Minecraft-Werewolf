# 番号を割り振り
scoreboard players reset @a mwd_items_given
scoreboard players set @a[tag=join] mwd_items_given 0
execute as @a[tag=join,sort=random] store result score @s mwd_items_given if entity @a[scores={mwd_items_given=0}]

# 参加者の位置にspecial_itemsを召喚
execute at @a[tag=join] run summon item ~ ~1 ~ {Tags:["special_items"],Item:{id:"minecraft:bedrock",Count:1b}}

# special_itemsにストレージに保存しているnbtを入れる
execute as @a[scores={mwd_items_given=1}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 1
execute as @a[scores={mwd_items_given=2}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 2
execute as @a[scores={mwd_items_given=3}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 3
execute as @a[scores={mwd_items_given=4}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 4
execute as @a[scores={mwd_items_given=5}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 5
execute as @a[scores={mwd_items_given=6}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 6
execute as @a[scores={mwd_items_given=7}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 7
execute as @a[scores={mwd_items_given=8}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 8
execute as @a[scores={mwd_items_given=9}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 9
execute as @a[scores={mwd_items_given=10}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 10
execute as @a[scores={mwd_items_given=11}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 11
execute as @a[scores={mwd_items_given=12}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 12
execute as @a[scores={mwd_items_given=13}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 13
execute as @a[scores={mwd_items_given=14}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 14
execute as @a[scores={mwd_items_given=15}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 15
execute as @a[scores={mwd_items_given=16}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage items 16

# special_itemsの数を1に変更
execute as @e[type=item,tag=special_items] run data modify entity @s Item.Count set value 1b

# special_itemsをkill
kill @e[type=item,tag=special_items,nbt={Item:{id:"minecraft:bedrock"}}]