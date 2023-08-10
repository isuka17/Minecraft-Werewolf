# 配役を表示
tellraw @a [{"text":"[Werewolf] ","color":"red"},{"text":"ゲームが開始されました。","color":"white"}]
tellraw @a [{"text":"[Werewolf] ","color":"red"},{"text":"今回の配役は以下の通りです。","color":"white"}]
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
scoreboard players set @a quartz_craft 0
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
schedule clear werewolf:system/bossbar/camouflage/timer
schedule clear werewolf:system/bossbar/invincible_time/timer

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

execute if score wolf_possession mwd_settings matches 1 if predicate werewolf:random_chance_30 run tag @r[tag=villager] add wolf_possession
execute if score wolf_possession mwd_settings matches 2 if predicate werewolf:random_chance_50 run tag @r[tag=villager] add wolf_possession
execute if score wolf_possession mwd_settings matches 3 if predicate werewolf:random_chance_100 run tag @r[tag=villager] add wolf_possession
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
scoreboard players set @a ability_usecount 0
scoreboard players set @a[tag=faker] ability_usecount 100000
scoreboard players set @a[tag=witch] ability_usecount 1
scoreboard players set @a[tag=camouflager] ability_usecount 1
scoreboard players set @a[tag=cleaner] ability_usecount 1
scoreboard players set @a[tag=seer] ability_usecount 1
scoreboard players set @a[tag=medium] ability_usecount 1
scoreboard players set @a[tag=knight] ability_usecount 1
scoreboard players set @a[tag=detective] ability_usecount 1
scoreboard players set @a[tag=thief] ability_usecount 1
scoreboard players set @a[tag=witch] ability_usecount 1

# スコアボード作成
scoreboard objectives remove penetrate
scoreboard objectives remove spirit
scoreboard objectives remove guard
scoreboard objectives remove thief
scoreboard objectives add penetrate trigger {"text":"預言","color":"yellow"}
scoreboard objectives add spirit trigger {"text":"霊媒","color":"yellow"}
scoreboard objectives add guard trigger {"text":"護衛","color":"yellow"}
scoreboard objectives add thief trigger {"text":"怪盗","color":"yellow"}

# トリガー許可
scoreboard players enable @a[tag=seer] penetrate
scoreboard players enable @a[tag=medium] spirit
scoreboard players enable @a[tag=knight] guard
scoreboard players enable @a[tag=thief] thief

# いろいろ
scoreboard players set werewolf mwd_settings 1
execute if entity @a[tag=thief] run function werewolf:system/start/thief

# 初期アイテム
give @a[tag=join] bow{Enchantments:[{id:"power",lvl:255},{id:"infinity",lvl:1},{id:"vanishing_curse",lvl:1}],Unbreakable:1,display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 人狼用弓","italic":false,"color":"white"}]'}}
give @a[tag=join] arrow{Enchantments:[{id:"vanishing_curse",lvl:1}],display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 人狼用矢","italic":false,"color":"white"}]'}}
give @a[tag=join] quartz
item replace entity @a[tag=join] hotbar.8 with nether_star{display:{Name:'{"text":"能力を使用","italic":false}'},Enchantments:[{id:"vanishing_curse",lvl:1}],ability_use:1}

# 特殊アイテム
scoreboard players reset @a item
scoreboard players set @a[tag=join] item 0
execute as @a[tag=join,sort=random] store result score @s item if entity @a[scores={mwd_items_give=0}]
execute at @a[tag=join] run summon item ~ ~1 ~ {Tags:["special_items"],Item:{id:"minecraft:bedrock",Count:1b}}
execute as @a[scores={mwd_items_give=1}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 1
execute as @a[scores={mwd_items_give=2}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 2
execute as @a[scores={mwd_items_give=3}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 3
execute as @a[scores={mwd_items_give=4}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 4
execute as @a[scores={mwd_items_give=5}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 5
execute as @a[scores={mwd_items_give=6}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 6
execute as @a[scores={mwd_items_give=7}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 7
execute as @a[scores={mwd_items_give=8}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 8
execute as @a[scores={mwd_items_give=9}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 9
execute as @a[scores={mwd_items_give=10}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 10
execute as @a[scores={mwd_items_give=11}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 11
execute as @a[scores={mwd_items_give=12}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 12
execute as @a[scores={mwd_items_give=13}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 13
execute as @a[scores={mwd_items_give=14}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 14
execute as @a[scores={mwd_items_give=15}] at @s run data modify entity @e[type=item,tag=special_items,sort=nearest,limit=1] Item set from storage item 15
execute as @e[type=item,tag=special_items] run data modify entity @s Item.Count set value 1b
kill @e[tag=special_items,nbt={Item:{id:"minecraft:bedrock"}}]
item replace entity @a[tag=join] hotbar.7 with written_book{pages:['["",{"text":"\\u6751\\u4eba","color":"blue"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 1"}},{"text":"\\n\\n"},{"text":"\\u5360\\u3044\\u5e2b","color":"#CFC100"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 2"}},{"text":"\\n\\n"},{"text":"\\u970a\\u5a92\\u5e2b","color":"dark_aqua"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 3"}},{"text":"\\n\\n"},{"text":"\\u5171\\u6709\\u8005","color":"dark_green"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 4"}},{"text":"\\n\\n"},{"text":"\\u9a0e\\u58eb","color":"gold"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 5"}},{"text":"\\n\\n"},{"text":"\\u63a2\\u5075","color":"#A43D00"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 6"}}]','["",{"text":"\\u5996\\u72d0","color":"dark_purple"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 7"}},{"text":"\\n\\n"},{"text":"\\u80cc\\u5fb3\\u8005","color":"dark_gray"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 8"}},{"text":"\\n\\n"},{"text":"\\u602a\\u76d7","color":"gold"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 10"}},{"text":"\\n\\n"},{"text":"\\u30a2\\u30ea\\u30b9","color":"#CBA400"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 9"}}]','["",{"text":"\\u4eba\\u72fc","color":"dark_red"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 11"}},{"text":"\\n\\n"},{"text":"\\u9b54\\u5973","color":"dark_red"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 12"}},{"text":"\\n\\n"},{"text":"\\u30d5\\u30a7\\u30a4\\u30ab\\u30fc","color":"dark_red"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 13"}},{"text":"\\n\\n"},{"text":"\\u72c2\\u4eba","color":"light_purple"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 14"}},{"text":"\\n\\n"},{"text":"\\u72c2\\u4fe1\\u8005","color":"light_purple"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 15"}},{"text":"\\n "}]','["",{"text":"\\u767d\\u78ba\\u5b9a\\u3092"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 16"}},{"text":"\\n\\n\\u9ed2\\u78ba\\u5b9a\\u3092"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 17"}},{"text":"\\n\\n\\u7247\\u767d\\u3092"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 18"}},{"text":"\\n\\n\\u30b0\\u30ec\\u30fc\\u3092"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 19"}}]'],title:"役職CO本",author:"",Enchantments:[{id:"vanishing_curse",lvl:1}]}

# 無敵時間
scoreboard players operation #残り無敵時間 mwd_settings = #invincible_time setting
execute if score invincible_time mwd_settings matches 1.. run bossbar add invincible_time ""
execute store result bossbar invincible_time max run scoreboard players get #残り無敵時間 setting
bossbar set invincible_time players @a[tag=join_request]
bossbar set invincible_time color yellow
schedule function werewolf:system/bossbar/invincible_time/timer 1s

# 役職を通知
tag @a[tag=normal_wolf] add wolf
tag @a[tag=faker] add wolf
tag @a[tag=witch] add wolf

tellraw @a[tag=normal_wolf] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"人狼","color":"red"},{"text":"です。","color":"white"}]
tellraw @a[tag=witch] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"魔女","color":"red"},{"text":"です。","color":"white"}]
tellraw @a[tag=reaper] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"死神","color":"red"},{"text":"です。","color":"white"}]
tellraw @a[tag=madman] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"狂人","color":"light_purple"},{"text":"です。","color":"white"}]
tellraw @a[tag=fanatic] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"狂信者","color":"light_purple"},{"text":"です。","color":"white"}]
tellraw @a[tag=fox] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"妖狐","color":"dark_purple"},{"text":"です。","color":"white"}]
tellraw @a[tag=immoralist] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"背徳者","color":"gray"},{"text":"です。","color":"white"}]
tellraw @a[tag=thief] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"怪盗","color":"#ff5800"},{"text":"です。","color":"white"}]
tellraw @a[tag=alice] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"アリス","color":"yellow"},{"text":"です。","color":"white"}]
tellraw @a[tag=alice] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"忘却者","color":"#808000"},{"text":"です。","color":"white"}]
tellraw @a[tag=seer] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"予言者","color":"yellow"},{"text":"です。","color":"white"}]
tellraw @a[tag=medium] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"霊媒師","color":"dark_aqua"},{"text":"です。","color":"white"}]
tellraw @a[tag=knight] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"騎士","color":"gold"},{"text":"です。","color":"white"}]
tellraw @a[tag=sharer] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"共有者","color":"green"},{"text":"です。","color":"white"}]
tellraw @a[tag=detective] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"探偵","color":"#a65300"},{"text":"です。","color":"white"}]
tellraw @a[tag=villager] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたの役職は","color":"white"},{"text":"村人","color":"#0080ff"},{"text":"です。","color":"white"}]

execute as @a[tag=wolf] at @s run tellraw @s [{"text":"[Werewolf] ","color":"red"},{"text":"仲間の人狼：","color":"red"},{"selector":"@a[tag=wolf,distance=0.1..]"}]
execute as @a[tag=fanatic] at @s run tellraw @s  [{"text":"[Werewolf] ","color":"red"},{"text":"今回の人狼：","color":"red"},{"selector":"@a[tag=wolf]"}]

execute if score immoralist mwd_settings matches 1.. as @a[tag=fox] at @s run tellraw @s [{"text":"[Werewolf] ","color":"red"},{"text":"背徳者：","color":"#a042ff"},{"selector":"@a[tag=immoral]","color":"#a042ff"}]
execute if score fox mwd_settings matches 1.. as @a[tag=immoralist] at @s run tellraw @s [{"text":"[Werewolf] ","color":"red"},{"text":"妖狐：","color":"gray"},{"selector":"@a[tag=fox]","color":"gray"}]

execute as @a[tag=sharer] at @s run tellraw @s [{"text":"[Werewolf] ","color":"red"},{"text":"相方：","color":"green"},{"selector":"@a[tag=sharer,distance=0.1..]","color":"green"}]