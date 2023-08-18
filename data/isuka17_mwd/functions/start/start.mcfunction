# 配役を表示
tellraw @a [{"text":"ゲームが開始されました。","color":"gold"}]
tellraw @a [{"text":"今回の配役は以下の通りです。","color":"white"}]
tellraw @a [{"text":"--------------------","color":"aqua"}]

execute store result score join_request mwd_settings if entity @a[tag=join_request]
execute if score join_request mwd_settings matches ..14 run tellraw @a [{"text":" 参加者：","color":"aqua"},{"score":{"name":"join_request","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score join_request mwd_settings matches 15.. run tellraw @a [{"text":" 参加者：15人","color":"aqua"}]

execute if score wolf mwd_settings matches 1.. run tellraw @a [{"text":" 人狼：","color":"aqua"},{"score":{"name":"wolf","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score witch mwd_settings matches 1.. run tellraw @a [{"text":" 魔女：","color":"aqua"},{"score":{"name":"witch","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score faker mwd_settings matches 1.. run tellraw @a [{"text":" フェイカー：","color":"aqua"},{"score":{"name":"faker","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score camouflager mwd_settings matches 1.. run tellraw @a [{"text":" カモフラージャー：","color":"aqua"},{"score":{"name":"camouflager","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score cleaner mwd_settings matches 1.. run tellraw @a [{"text":" クリーナー：","color":"aqua"},{"score":{"name":"cleaner","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score madman mwd_settings matches 1.. run tellraw @a [{"text":" 狂人：","color":"aqua"},{"score":{"name":"madman","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score fanatic mwd_settings matches 1.. run tellraw @a [{"text":" 狂信者：","color":"aqua"},{"score":{"name":"fanatic","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score fox mwd_settings matches 1.. run tellraw @a [{"text":" 妖狐：","color":"aqua"},{"score":{"name":"fox","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score immoralist mwd_settings matches 1.. run tellraw @a [{"text":" 背徳者：","color":"aqua"},{"score":{"name":"immoralist","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score thief mwd_settings matches 1.. run tellraw @a [{"text":" 怪盗：","color":"aqua"},{"score":{"name":"thief","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score alice mwd_settings matches 1.. run tellraw @a [{"text":" アリス：","color":"aqua"},{"score":{"name":"alice","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score seer mwd_settings matches 1.. run tellraw @a [{"text":" 予言者：","color":"aqua"},{"score":{"name":"seer","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score medium mwd_settings matches 1.. run tellraw @a [{"text":" 霊媒師：","color":"aqua"},{"score":{"name":"medium","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score sharer mwd_settings matches 1.. run tellraw @a [{"text":" 共有者：","color":"aqua"},{"score":{"name":"sharer","objective":"setting"},"color":"aqua"},{"text":"組","color":"aqua"}]
execute if score knight mwd_settings matches 1.. run tellraw @a [{"text":" 騎士：","color":"aqua"},{"score":{"name":"knight","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score detective mwd_settings matches 1.. run tellraw @a [{"text":" 探偵：","color":"aqua"},{"score":{"name":"detective","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score dammed mwd_settings matches 1.. run tellraw @a [{"text":" 呪われし者：","color":"aqua"},{"score":{"name":"dammed","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score wolf_possession mwd_settings matches 1 run tellraw @a [{"text":" 狼憑き：1人(50%)","color":"aqua"}]
execute if score wolf_possession mwd_settings matches 2 run tellraw @a [{"text":" 狼憑き：1人(100%)","color":"aqua"}]

tellraw @a [{"text":"--------------------","color":"aqua"}]

# ゲームルールを変更
gamerule sendCommandFeedback false
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule keepInventory false
gamerule doImmediateRespawn false
gamerule showDeathMessages false

# スコアボードを設定
scoreboard players set @a skyhighdive 0
scoreboard players set @a flamethrower 0
scoreboard players set @a mine 0
scoreboard players set @a positionchange_book 0
scoreboard players set @a teleporter_use 0
scoreboard players set @a co 0
scoreboard players set @a mwd_items_luminous_bottle 0
scoreboard players set @a mwd_items_blackout 0
scoreboard players set @a mwd_items_blackhole 0
scoreboard players set @a balloon 0
scoreboard players set @a mwd_items_select 0
scoreboard players set @a crafted_quartz 0
scoreboard players set @a invincible_armor 0
scoreboard players set @a deadbody 0
scoreboard players set @a mwd_killlog_deathCount 0
scoreboard players set @a mwd_killlog_killcount 0
scoreboard players set @a stanball 0
scoreboard players set camouflage mwd_settings 0
scoreboard players set #残り無敵時間 mwd_settings 0

# 参加プレイヤーを抽選
tag @a remove join
scoreboard players set 参加希望者数 mwd_settings 0
execute store result score 参加希望者数 mwd_settings if entity @a[tag=join_request]
execute if score 参加希望者数 mwd_settings matches ..15 run tag @a[tag=join_request] add join
execute if score 参加希望者数 mwd_settings matches 16.. run tag @r[tag=join_request,limit=15] add join
execute if score 参加希望者数 mwd_settings matches 16.. run team join ghost @a[tag=join_request,tag=!join]
execute if score 参加希望者数 mwd_settings matches 16.. run tellraw @a [{"text":"参加希望者が16人を超えた為、以下のプレイヤーが観戦者となりました。\n"},{"selector":"@a[team=ghost]"}]

# いろいろ
gamemode spectator @a[team=ghost]
gamemode adventure @a[tag=join]
kill @e[tag=deadbody]
kill @e[type=arrow]
kill @e[type=item]
clear @a[tag=join]
effect clear @a[tag=join]
effect give @a[tag=join] saturation 1 100 true
effect give @a[tag=join] instant_health 1 100 true
effect give @a[tag=join] saturation 1 100 true
schedule clear isuka17_mwd:bossbar/camouflage/timer
schedule clear isuka17_mwd:bossbar/invincible_time/timer

# タグを削除
tag @a remove wolf
tag @a remove normal_wolf
tag @a remove witch
tag @a remove faker
tag @a remove camouflager
tag @a remove cleaner
tag @a remove madman
tag @a remove fanatic
tag @a remove fox
tag @a remove immoralist
tag @a remove seer
tag @a remove medium
tag @a remove knight
tag @a remove detective
tag @a remove sharer
tag @a remove alice
tag @a remove thief
tag @a remove guard
tag @a remove villager
tag @a remove dammed
tag @a remove revive
tag @a remove wolf_possession

# チームから脱退
team leave @a

# その他
scoreboard objectives setdisplay sidebar
scoreboard players set @a[tag=join] actionbar 0

# 役職を配布
execute if score wolf mwd_settings matches 1 run tag @r[tag=join] add normal_wolf
execute if score wolf mwd_settings matches 2 run tag @r[tag=join,limit=2] add normal_wolf
execute if score wolf mwd_settings matches 3.. run tag @r[tag=join,limit=3] add normal_wolf
tag @a[tag=normal_wolf] add special_role
execute if score witch mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add witch
tag @a[tag=witch] add special_role
execute if score faker mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add faker
tag @a[tag=faker] add special_role
execute if score camouflager mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add camouflager
tag @a[tag=camouflager] add special_role
execute if score cleaner mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add cleaner
tag @a[tag=cleaner] add special_role
execute if score fanatic mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add fanatic
tag @a[tag=fanatic] add special_role
execute if score madman mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add madman
tag @a[tag=madman] add special_role

execute if score fox mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add fox
tag @a[tag=fox] add special_role
execute if score immoralist mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add immoral
tag @a[tag=immoral] add special_role
execute if score alice mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add alice
tag @a[tag=alice] add special_role
team join alice @a[tag=alice]
execute if score thief mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add thief
tag @a[tag=thief] add special_role
team join thief @a[tag=thief]

execute if score seer mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add seer
tag @a[tag=seer] add special_role
execute if score medium mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add medium
tag @a[tag=medium] add special_role
execute if score sharer mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role,limit=2] add sharer
tag @a[team=sharer] add special_role
execute if score knight mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add knight
tag @a[tag=knight] add special_role
execute if score detective mwd_settings matches 1.. run tag @r[tag=join,tag=!special_role] add detective
tag @a[tag=detective] add special_role
tag @a[tag=join,tag=!special_role] add villager
tag @a remove special_role

execute if score wolf_possession mwd_settings matches 1 if predicate isuka17_mwd:random_chance_30 run tag @r[tag=villager] add wolf_possession
execute if score wolf_possession mwd_settings matches 2 if predicate isuka17_mwd:random_chance_50 run tag @r[tag=villager] add wolf_possession
execute if score wolf_possession mwd_settings matches 3 if predicate isuka17_mwd:random_chance_100 run tag @r[tag=villager] add wolf_possession
execute if score dammed mwd_settings matches 1.. run tag @r[tag=villager] add dammed

# 役職に応じてTeamに加入
team join wolf @a[tag=normal_wolf]
team join wolf @a[tag=witch]
team join wolf @a[tag=faker]
team join wolf @a[tag=camouflager]
team join wolf @a[tag=cleaner]
team join wolf @a[tag=fanatic]
team join madman @a[tag=madman]
team join fox @a[tag=fox]
team join fox @a[tag=immoralist]
team join seer @a[tag=seer]
team join medium @a[tag=medium]
team join sharer @a[team=sharer]
team join knight @a[tag=knight]
team join detective @a[tag=detective]
team join villager1 @r[tag=villager,team=]
team join villager2 @r[tag=villager,team=]
team join villager3 @r[tag=villager,team=]
team join villager4 @r[tag=villager,team=]
team join villager5 @r[tag=villager,team=]
team join villager6 @r[tag=villager,team=]
team join villager7 @r[tag=villager,team=]
team join villager8 @r[tag=villager,team=]
team join villager9 @r[tag=villager,team=]
team join villager10 @r[tag=villager,team=]
team join villager11 @r[tag=villager,team=]
team join villager12 @r[tag=villager,team=]
team join villager13 @r[tag=villager,team=]
team join villager14 @r[tag=villager,team=]

# アクションバーを設定
scoreboard players set @a[tag=normal_wolf] actionbar 1
scoreboard players set @a[tag=witch] actionbar 2
scoreboard players set @a[tag=faker] actionbar 3
scoreboard players set @a[tag=madman] actionbar 4
scoreboard players set @a[tag=fanatic] actionbar 5
scoreboard players set @a[tag=fox] actionbar 6
scoreboard players set @a[tag=immoral] actionbar 7
scoreboard players set @a[tag=thief] actionbar 8
scoreboard players set @a[tag=alice] actionbar 9
scoreboard players set @a[tag=seer] actionbar 10
scoreboard players set @a[tag=medium] actionbar 11
scoreboard players set @a[team=sharer] actionbar 12
scoreboard players set @a[tag=knight] actionbar 13
scoreboard players set @a[tag=detective] actionbar 14
scoreboard players set @a[tag=villager] actionbar 15

# プレイヤーナンバー
scoreboard players reset @a mwd_number
scoreboard players set @a[tag=join] mwd_number 0
execute as @a[sort=random,tag=join] store result score @s mwd_number if entity @a[scores={mwd_number=0}]

# 能力使用回数を設定
scoreboard players set @a mwd_ability 0
scoreboard players set @a[tag=faker] mwd_ability 100000
scoreboard players set @a[tag=witch] mwd_ability 1
scoreboard players set @a[tag=camouflager] mwd_ability 1
scoreboard players set @a[tag=cleaner] mwd_ability 1
scoreboard players set @a[tag=seer] mwd_ability 1
scoreboard players set @a[tag=medium] mwd_ability 1
scoreboard players set @a[tag=knight] mwd_ability 1
scoreboard players set @a[tag=detective] mwd_ability 1
scoreboard players set @a[tag=thief] mwd_ability 1
scoreboard players set @a[tag=witch] mwd_ability 1

# スコアボード作成
scoreboard objectives remove penetrate
scoreboard objectives remove spirit
scoreboard objectives remove guard
scoreboard objectives remove thief
scoreboard objectives add penetrate trigger {"text":"[Minecraft人狼] 預言","color":"red"}
scoreboard objectives add spirit trigger {"text":"[Minecraft人狼] 霊媒","color":"red"}
scoreboard objectives add guard trigger {"text":"[Minecraft人狼] 護衛","color":"red"}
scoreboard objectives add thief trigger {"text":"[Minecraft人狼] 怪盗","color":"red"}

# トリガー許可
scoreboard players enable @a[scores={mwd_roles_villager=1}] penetrate
scoreboard players enable @a[scores={mwd_roles_villager=2}] spirit
scoreboard players enable @a[scores={mwd_roles_villager=3}] guard
scoreboard players enable @a[tag=thief] thief

# いろいろ
scoreboard players set #werewolf mwd_settings 1
execute if entity @a[tag=thief] run function isuka17_mwd:start/thief

# 無敵時間
scoreboard players operation #残り無敵時間 mwd_settings = #invincible_time setting
execute if score invincible_time mwd_settings matches 1.. run bossbar add invincible_time ""
execute store result bossbar invincible_time max run scoreboard players get #残り無敵時間 setting
bossbar set invincible_time players @a[tag=join_request]
bossbar set invincible_time color yellow
schedule function isuka17_mwd:bossbar/invincible_time/timer 1s

# 役職を通知
tag @a[tag=normal_wolf] add wolf
tag @a[tag=faker] add wolf
tag @a[tag=witch] add wolf

tellraw @a[tag=normal_wolf] [{"text":"あなたの役職は","color":"white"},{"text":"人狼","color":"red"},{"text":"です。","color":"white"}]
tellraw @a[tag=witch] [{"text":"あなたの役職は","color":"white"},{"text":"魔女","color":"red"},{"text":"です。","color":"white"}]
tellraw @a[tag=reaper] [{"text":"あなたの役職は","color":"white"},{"text":"死神","color":"red"},{"text":"です。","color":"white"}]
tellraw @a[tag=madman] [{"text":"あなたの役職は","color":"white"},{"text":"狂人","color":"light_purple"},{"text":"です。","color":"white"}]
tellraw @a[tag=fanatic] [{"text":"あなたの役職は","color":"white"},{"text":"狂信者","color":"light_purple"},{"text":"です。","color":"white"}]
tellraw @a[tag=fox] [{"text":"あなたの役職は","color":"white"},{"text":"妖狐","color":"dark_purple"},{"text":"です。","color":"white"}]
tellraw @a[tag=immoralist] [{"text":"あなたの役職は","color":"white"},{"text":"背徳者","color":"gray"},{"text":"です。","color":"white"}]
tellraw @a[tag=thief] [{"text":"あなたの役職は","color":"white"},{"text":"怪盗","color":"#ff5800"},{"text":"です。","color":"white"}]
tellraw @a[tag=alice] [{"text":"あなたの役職は","color":"white"},{"text":"アリス","color":"yellow"},{"text":"です。","color":"white"}]
tellraw @a[tag=alice] [{"text":"あなたの役職は","color":"white"},{"text":"忘却者","color":"#808000"},{"text":"です。","color":"white"}]
tellraw @a[tag=seer] [{"text":"あなたの役職は","color":"white"},{"text":"予言者","color":"yellow"},{"text":"です。","color":"white"}]
tellraw @a[tag=medium] [{"text":"あなたの役職は","color":"white"},{"text":"霊媒師","color":"dark_aqua"},{"text":"です。","color":"white"}]
tellraw @a[tag=knight] [{"text":"あなたの役職は","color":"white"},{"text":"騎士","color":"gold"},{"text":"です。","color":"white"}]
tellraw @a[tag=sharer] [{"text":"あなたの役職は","color":"white"},{"text":"共有者","color":"green"},{"text":"です。","color":"white"}]
tellraw @a[tag=detective] [{"text":"あなたの役職は","color":"white"},{"text":"探偵","color":"#a65300"},{"text":"です。","color":"white"}]
tellraw @a[tag=villager] [{"text":"あなたの役職は","color":"white"},{"text":"村人","color":"#0080ff"},{"text":"です。","color":"white"}]

execute if score wolf mwd_settings matches 2.. as @a[tag=wolf] at @s run tellraw @s [{"text":"仲間の人狼："},{"selector":"@a[tag=wolf,distance=0.1..]","color":"red"}]
execute as @a[tag=fanatic] at @s run tellraw @s  [{"text":"今回の人狼："},{"selector":"@a[tag=wolf]","color":"red"}]

execute if score immoralist mwd_settings matches 1.. as @a[tag=fox] at @s run tellraw @s [{"text":"背徳者：","color":"#a042ff"},{"selector":"@a[tag=immoral]","color":"#a042ff"}]
execute if score fox mwd_settings matches 1.. as @a[tag=immoralist] at @s run tellraw @s [{"text":"妖狐：","color":"gray"},{"selector":"@a[tag=fox]","color":"gray"}]

execute as @a[tag=sharer] at @s run tellraw @s [{"text":"相方：","color":"green"},{"selector":"@a[tag=sharer,distance=0.1..]","color":"green"}]