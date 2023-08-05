# スコアリセット
scoreboard players reset @a shuffle
scoreboard players set @a[tag=join,gamemode=!spectator] shuffle 0

# スコア割り振り
execute as @a[tag=join,gamemode=!spectator,sort=random] store result score @s shuffle if entity @a[scores={shuffle=0}]

# 防具立て召喚
execute at @a[scores={shuffle=1}] run summon armor_stand ~ ~ ~ {Tags:["shuffle1"]}
execute at @a[scores={shuffle=2}] run summon armor_stand ~ ~ ~ {Tags:["shuffle2"]}
execute at @a[scores={shuffle=3}] run summon armor_stand ~ ~ ~ {Tags:["shuffle3"]}
execute at @a[scores={shuffle=4}] run summon armor_stand ~ ~ ~ {Tags:["shuffle4"]}
execute at @a[scores={shuffle=5}] run summon armor_stand ~ ~ ~ {Tags:["shuffle5"]}
execute at @a[scores={shuffle=6}] run summon armor_stand ~ ~ ~ {Tags:["shuffle6"]}
execute at @a[scores={shuffle=7}] run summon armor_stand ~ ~ ~ {Tags:["shuffle7"]}
execute at @a[scores={shuffle=8}] run summon armor_stand ~ ~ ~ {Tags:["shuffle8"]}
execute at @a[scores={shuffle=9}] run summon armor_stand ~ ~ ~ {Tags:["shuffle9"]}
execute at @a[scores={shuffle=10}] run summon armor_stand ~ ~ ~ {Tags:["shuffle10"]}
execute at @a[scores={shuffle=11}] run summon armor_stand ~ ~ ~ {Tags:["shuffle11"]}
execute at @a[scores={shuffle=12}] run summon armor_stand ~ ~ ~ {Tags:["shuffle12"]}
execute at @a[scores={shuffle=13}] run summon armor_stand ~ ~ ~ {Tags:["shuffle13"]}
execute at @a[scores={shuffle=14}] run summon armor_stand ~ ~ ~ {Tags:["shuffle14"]}

# ランダムTP
tp @a[scores={shuffle=1}] @e[tag=shuffle2,limit=1]
tp @a[scores={shuffle=2}] @e[tag=shuffle1,limit=1]
tp @a[scores={shuffle=3}] @e[tag=shuffle4,limit=1]
tp @a[scores={shuffle=4}] @e[tag=shuffle3,limit=1]
tp @a[scores={shuffle=5}] @e[tag=shuffle6,limit=1]
tp @a[scores={shuffl=6}] @e[tag=shuffle5,limit=1]
tp @a[scores={shuffle=7}] @e[tag=shuffle8,limit=1]
tp @a[scores={shuffle=8}] @e[tag=shuffle7,limit=1]
tp @a[scores={shuffle=9}] @e[tag=shuffle10,limit=1]
tp @a[scores={shuffle=10}] @e[tag=shuffle9,limit=1]
tp @a[scores={shuffle=11}] @e[tag=shuffle12,limit=1]
tp @a[scores={shuffle=12}] @e[tag=shuffle11,limit=1]
tp @a[scores={shuffle=13}] @e[tag=shuffle14,limit=1]
tp @a[scores={shuffle=14}] @e[tag=shuffle13,limit=1]

# 後処理
execute as @a at @s run playsound minecraft:entity.illusioner.mirror_move master @s ~ ~ ~ 1 1
kill @e[tag=shuffle1]
kill @e[tag=shuffle2]
kill @e[tag=shuffle3]
kill @e[tag=shuffle4]
kill @e[tag=shuffle5]
kill @e[tag=shuffle6]
kill @e[tag=shuffle7]
kill @e[tag=shuffle8]
kill @e[tag=shuffle9]
kill @e[tag=shuffle10]
kill @e[tag=shuffle11]
kill @e[tag=shuffle12]
kill @e[tag=shuffle13]
kill @e[tag=shuffle14]
clear @a[scores={positionchange_book=1..}] knowledge_book 1
scoreboard players set @a positionchange_book 0