# 防具立て召喚
execute at @a[tag=mwd_join,team=!mwd_spectator] run summon armor_stand ~ ~ ~ {Tags:["positionchange"],Invisible:1,Marker:1}

# スコア割り振り
scoreboard players reset @a mwd_items_positionchange_gem2
scoreboard players set @a[team=!mwd_spectator] mwd_items_positionchange_gem2 0
execute as @a[team=!mwd_spectator,sort=random] store result score @s mwd_items_positionchange_gem2 if entity @a[scores={mwd_items_positionchange_gem2=0}]

# 防具立てを召喚
execute at @a[scores={mwd_items_positionchange_gem2=1}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_1"]}
execute at @a[scores={mwd_items_positionchange_gem2=2}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_2"]}
execute at @a[scores={mwd_items_positionchange_gem2=3}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_3"]}
execute at @a[scores={mwd_items_positionchange_gem2=4}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_4"]}
execute at @a[scores={mwd_items_positionchange_gem2=5}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_5"]}
execute at @a[scores={mwd_items_positionchange_gem2=6}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_6"]}
execute at @a[scores={mwd_items_positionchange_gem2=7}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_7"]}
execute at @a[scores={mwd_items_positionchange_gem2=8}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_8"]}
execute at @a[scores={mwd_items_positionchange_gem2=9}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_9"]}
execute at @a[scores={mwd_items_positionchange_gem2=10}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_10"]}
execute at @a[scores={mwd_items_positionchange_gem2=11}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_11"]}
execute at @a[scores={mwd_items_positionchange_gem2=12}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_12"]}
execute at @a[scores={mwd_items_positionchange_gem2=13}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_13"]}
execute at @a[scores={mwd_items_positionchange_gem2=14}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_14"]}
execute at @a[scores={mwd_items_positionchange_gem2=15}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_15"]}
execute at @a[scores={mwd_items_positionchange_gem2=16}] run summon armor_stand ~ ~ ~ {Tags:["positionchange","positionchange_16"]}

# テレポート
tp @a[scores={mwd_items_positionchange_gem2=1}] @e[tag=positionchange_2,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=2}] @e[tag=positionchange_1,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=3}] @e[tag=positionchange_4,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=4}] @e[tag=positionchange_3,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=5}] @e[tag=positionchange_6,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=6}] @e[tag=positionchange_5,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=7}] @e[tag=positionchange_8,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=8}] @e[tag=positionchange_7,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=9}] @e[tag=positionchange_10,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=10}] @e[tag=positionchange_9,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=11}] @e[tag=positionchange_12,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=12}] @e[tag=positionchange_11,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=13}] @e[tag=positionchange_14,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=14}] @e[tag=positionchange_13,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=15}] @e[tag=positionchange_16,limit=1]
tp @a[scores={mwd_items_positionchange_gem2=16}] @e[tag=positionchange_15,limit=1]

# 発動音
execute as @a at @s run playsound minecraft:entity.illusioner.mirror_move master @s ~ ~ ~ 1 1

# 真上打ち対策
effect give @a resistance 1 5 true

# 防具立てをkill
kill @e[tag=positionchange]

# ダイヤモンドをkill
kill @e[type=item,nbt={Item:{id:"minecraft:diamond"}}]