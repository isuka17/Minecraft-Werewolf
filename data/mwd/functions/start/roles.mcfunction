# ゲーム開始
team leave @a
title @a times 10 70 20
title @a title {"text":"ゲーム開始！","color":"gold","bold":true}
execute as @a at @s run playsound entity.wolf.howl master @s ~ ~ ~ 1 1
scoreboard players set #werewolf mwd_settings 1

# 参加プレイヤーを抽選
execute store result score #参加希望者数 mwd_settings if entity @a[tag=mwd_hope_participate]
execute if score #参加希望者数 mwd_settings matches ..16 run tag @a[tag=mwd_hope_participate] add mwd_join
execute if score #参加希望者数 mwd_settings matches 17.. run tag @r[tag=mwd_hope_participate,limit=16] add mwd_join
execute if score #参加希望者数 mwd_settings matches 17.. run team join mwd_spectator @a[tag=!mwd_join]
execute if score #参加希望者数 mwd_settings matches 17.. run tellraw @a [{"text":"参加希望者が16人を超えた為、以下のプレイヤーが観戦者となりました。\n"},{"selector":"@a[team=mwd_spectator]"}]
scoreboard players add @a[tag=mwd_join] mwd_battlerecords_participants 1

# スコアを割り振り
execute if score 人狼 mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join] mwd_roles_wolf 1
execute if score 人狼 mwd_settings matches 2 run scoreboard players set @r[tag=mwd_join,limit=2] mwd_roles_wolf 1
execute if score 人狼 mwd_settings matches 3 run scoreboard players set @r[tag=mwd_join,limit=3] mwd_roles_wolf 1
tag @a[scores={mwd_roles_wolf=1}] add special_roles

execute if score 魔女 mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_wolf 2
execute if score 魔女 mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_wolf4 2
tag @a[scores={mwd_roles_wolf=2}] add special_roles

execute if score 狂人 mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_wolf 3
execute if score 狂人 mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_wolf 3
tag @a[scores={mwd_roles_wolf=3}] add special_roles

execute if score 狂信者 mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_wolf 4
execute if score 狂信者 mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_wolf 4
tag @a[scores={mwd_roles_wolf=4}] add special_roles

execute if score 妖狐 mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_neutral 1
execute if score 妖狐 mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_neutral 1
tag @a[scores={mwd_roles_neutral=1}] add special_roles

execute if score 背徳者 mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_neutral 2
execute if score 背徳者 mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_neutral 2
tag @a[scores={mwd_roles_neutral=2}] add special_roles

execute if score アリス mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_neutral 4
execute if score アリス mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_neutral 4
tag @a[scores={mwd_roles_neutral=4}] add special_roles

execute if score 予言者 mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_villager 1
execute if score 予言者 mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_villager 1
tag @a[scores={mwd_roles_villager=1}] add special_roles

execute if score 霊媒師 mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_villager 2
execute if score 霊媒師 mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_villager 2
tag @a[scores={mwd_roles_villager=2}] add special_roles

execute if score 共有者 mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join,tag=!special_roles,limit=2] mwd_roles_villager 3
execute if score 共有者 mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[tag=mwd_join,tag=!special_roles,limit=2] mwd_roles_villager 3
tag @a[scores={mwd_roles_villager=3}] add special_roles

execute if score 騎士 mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_villager 4
execute if score 騎士 mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_villager 4
tag @a[scores={mwd_roles_villager=4}] add special_roles

execute if score 探偵 mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_villager 5
execute if score 探偵 mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_villager 5
tag @a[scores={mwd_roles_villager=5}] add special_roles

execute if score 怪盗 mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_extra 3
execute if score 怪盗 mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_extra 3
tag @a[scores={mwd_roles_extra=3}] add special_roles

execute if score 忘却者 mwd_settings matches 1 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_extra 4
execute if score 忘却者 mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[tag=mwd_join,tag=!special_roles] mwd_roles_extra 4
tag @a[scores={mwd_roles_extra=4}] add special_roles

scoreboard players set @a[tag=mwd_join,scores={mwd_roles_wolf=0,mwd_roles_neutral=0,mwd_roles_villager=0,mwd_roles_extra=0}] mwd_roles_villager 6

execute if score 狼憑き mwd_settings matches 1 run scoreboard players set @r[scores={mwd_roles_villager=6}] mwd_roles_extra 1
execute if score 狼憑き mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[scores={mwd_roles_villager=6}] mwd_roles_extra 1

execute if score 呪われし者 mwd_settings matches 1 run scoreboard players set @r[scores={mwd_roles_villager=6}] mwd_roles_extra 2
execute if score 呪われし者 mwd_settings matches -1 if predicate mwd:random/50 run scoreboard players set @r[scores={mwd_roles_villager=6}] mwd_roles_extra 2

# タグを削除
tag @a remove special_roles

# 役職に応じてチームに追加
team join mwd_wolf @a[scores={mwd_roles_wolf=1..2}]
team join mwd_madman @a[scores={mwd_roles_wolf=3}]
team join mwd_fanatic @a[scores={mwd_roles_wolf=4}]
team join mwd_fox @a[scores={mwd_roles_neutral=1}]
team join mwd_fox @a[scores={mwd_roles_neutral=2}]
team join mwd_alice @a[scores={mwd_roles_neutral=3}]
team join mwd_seer @a[scores={mwd_roles_villager=1}]
team join mwd_medium @a[scores={mwd_roles_villager=2}]
team join mwd_sharer @a[scores={mwd_roles_villager=3}]
team join mwd_knight @a[scores={mwd_roles_villager=4}]
team join mwd_detective @a[scores={mwd_roles_villager=5}]
team join mwd_villager1 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager2 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager3 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager4 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager5 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager6 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager7 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager8 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager9 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager10 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager11 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager12 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager13 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager14 @r[scores={mwd_roles_villager=6},team=]
team join mwd_villager15 @r[scores={mwd_roles_villager=6},team=]
team join mwd_dammed @a[scores={mwd_roles_extra=2}]
team join mwd_thief @a[scores={mwd_roles_extra=3}]
team join mwd_forgotten @a[scores={mwd_roles_extra=4}]

# アクションバーを設定
scoreboard players set @a[scores={mwd_roles_wolf=1}] mwd_roles_actionbar 1
scoreboard players set @a[scores={mwd_roles_wolf=2}] mwd_roles_actionbar 2
scoreboard players set @a[scores={mwd_roles_wolf=3}] mwd_roles_actionbar 3
scoreboard players set @a[scores={mwd_roles_wolf=4}] mwd_roles_actionbar 4
scoreboard players set @a[scores={mwd_roles_neutral=1}] mwd_roles_actionbar 5
scoreboard players set @a[scores={mwd_roles_neutral=2}] mwd_roles_actionbar 6
scoreboard players set @a[scores={mwd_roles_neutral=3}] mwd_roles_actionbar 7
scoreboard players set @a[scores={mwd_roles_extra=3}] mwd_roles_actionbar 8
scoreboard players set @a[scores={mwd_roles_extra=4}] mwd_roles_actionbar 9
scoreboard players set @a[scores={mwd_roles_villager=1}] mwd_roles_actionbar 10
scoreboard players set @a[scores={mwd_roles_villager=2}] mwd_roles_actionbar 11
scoreboard players set @a[scores={mwd_roles_villager=3}] mwd_roles_actionbar 12
scoreboard players set @a[scores={mwd_roles_villager=4}] mwd_roles_actionbar 13
scoreboard players set @a[scores={mwd_roles_villager=5}] mwd_roles_actionbar 14
scoreboard players set @a[scores={mwd_roles_villager=6}] mwd_roles_actionbar 15

# ゲームモード
gamemode adventure @a[tag=mwd_join]
gamemode spectator @a[tag=!mwd_join]

# プレイヤー番号
scoreboard players reset @a mwd_number
scoreboard players set @a[tag=mwd_join] mwd_number 0
execute as @a[tag=mwd_join,sort=random] store result score @s mwd_number if entity @a[scores={mwd_number=0}]

# 役職を通知
tellraw @a[scores={mwd_roles_wolf=1}] [{"text":"あなたの役職は","color":"white"},{"text":"人狼","color":"red"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_wolf=2}] [{"text":"あなたの役職は","color":"white"},{"text":"魔女","color":"red"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_wolf=3}] [{"text":"あなたの役職は","color":"white"},{"text":"狂人","color":"light_purple"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_wolf=4}] [{"text":"あなたの役職は","color":"white"},{"text":"狂信者","color":"light_purple"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_neutral=1}] [{"text":"あなたの役職は","color":"white"},{"text":"妖狐","color":"dark_purple"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_neutral=2}] [{"text":"あなたの役職は","color":"white"},{"text":"背徳者","color":"gray"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_neutral=3}] [{"text":"あなたの役職は","color":"white"},{"text":"アリス","color":"yellow"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_villager=1}] [{"text":"あなたの役職は","color":"white"},{"text":"予言者","color":"yellow"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_villager=2}] [{"text":"あなたの役職は","color":"white"},{"text":"霊媒師","color":"dark_aqua"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_villager=3}] [{"text":"あなたの役職は","color":"white"},{"text":"騎士","color":"gold"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_villager=4}] [{"text":"あなたの役職は","color":"white"},{"text":"共有者","color":"green"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_villager=5}] [{"text":"あなたの役職は","color":"white"},{"text":"探偵","color":"#a65300"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_villager=6}] [{"text":"あなたの役職は","color":"white"},{"text":"村人","color":"#0080ff"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_extra=3}] [{"text":"あなたの役職は","color":"white"},{"text":"怪盗","color":"#ff5800"},{"text":"です。","color":"white"}]
tellraw @a[scores={mwd_roles_extra=4}] [{"text":"あなたの役職は","color":"white"},{"text":"忘却者","color":"gray"},{"text":"です。","color":"white"}]
execute as @a[scores={mwd_roles_wolf=1..2}] at @s run tellraw @s [{"text":"仲間の人狼: "},{"selector":"@a[scores={mwd_roles_wolf=1..2},distance=0.1..]","color":"red"}]
tellraw @a[scores={mwd_roles_wolf=3}]  [{"text":"今回の人狼: "},{"selector":"@a[scores={mwd_roles_wolf=1}]","color":"red"}]
execute as @a[scores={mwd_roles_neutral=1}] at @s run tellraw @s [{"text":"背徳者: ","color":"#a042ff"},{"selector":"@a[scores={mwd_roles_neutral=2}]","color":"#a042ff"}]
execute as @a[scores={mwd_roles_neutral=2}] at @s run tellraw @s [{"text":"妖狐: ","color":"gray"},{"selector":"@a[scores={mwd_roles_neutral=1}]","color":"gray"}]
execute as @a[scores={mwd_roles_villager=4}] at @s run tellraw @s [{"text":"相方: ","color":"green"},{"selector":"@a[scores={mwd_roles_villager=4},distance=0.1..]","color":"green"}]