# 配役を表示
tellraw @a [{"text":"[Werewolf] ","color":"red"},{"text":"ゲームが開始されました。","color":"white"}]
tellraw @a [{"text":"[Werewolf] ","color":"red"},{"text":"今回の配役は以下の通りです。","color":"white"}]
tellraw @a [{"text":"--------------------------------","color":"aqua"}]

execute store result score join_request setting if entity @a[tag=join_request]
execute if score join_request setting matches ..14 run tellraw @a [{"text":" 参加者：","color":"aqua"},{"score":{"name":"join_request","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score join_request setting matches 15.. run tellraw @a [{"text":" 参加者：15人","color":"aqua"}]

execute if score wolf setting matches 1.. run tellraw @a [{"text":" 人狼：","color":"aqua"},{"score":{"name":"wolf","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score witch setting matches 1.. run tellraw @a [{"text":" 魔女：","color":"aqua"},{"score":{"name":"witch","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score faker setting matches 1.. run tellraw @a [{"text":" フェイカー：","color":"aqua"},{"score":{"name":"faker","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score camouflager setting matches 1.. run tellraw @a [{"text":" カモフラージャー：","color":"aqua"},{"score":{"name":"camouflager","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score cleaner setting matches 1.. run tellraw @a [{"text":" クリーナー：","color":"aqua"},{"score":{"name":"cleaner","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score madman setting matches 1.. run tellraw @a [{"text":" 狂人：","color":"aqua"},{"score":{"name":"madman","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score fanatic setting matches 1.. run tellraw @a [{"text":" 狂信者：","color":"aqua"},{"score":{"name":"fanatic","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score fox setting matches 1.. run tellraw @a [{"text":" 妖狐：","color":"aqua"},{"score":{"name":"fox","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score immoralist setting matches 1.. run tellraw @a [{"text":" 背徳者：","color":"aqua"},{"score":{"name":"immoralist","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score thief setting matches 1.. run tellraw @a [{"text":" 怪盗：","color":"aqua"},{"score":{"name":"thief","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score alice setting matches 1.. run tellraw @a [{"text":" アリス：","color":"aqua"},{"score":{"name":"alice","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score seer setting matches 1.. run tellraw @a [{"text":" 預言者：","color":"aqua"},{"score":{"name":"seer","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score medium setting matches 1.. run tellraw @a [{"text":" 霊媒師：","color":"aqua"},{"score":{"name":"medium","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score sharer setting matches 1.. run tellraw @a [{"text":" 共有者：","color":"aqua"},{"score":{"name":"sharer","objective":"setting"},"color":"aqua"},{"text":"組","color":"aqua"}]
execute if score knight setting matches 1.. run tellraw @a [{"text":" 騎士：","color":"aqua"},{"score":{"name":"knight","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score detective setting matches 1.. run tellraw @a [{"text":" 探偵：","color":"aqua"},{"score":{"name":"detective","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score dammed setting matches 1.. run tellraw @a [{"text":" 呪われし者：","color":"aqua"},{"score":{"name":"dammed","objective":"setting"},"color":"aqua"},{"text":"人","color":"aqua"}]
execute if score wolf_possession setting matches 1 run tellraw @a [{"text":" 狼憑き：1人(30%)","color":"aqua"}]
execute if score wolf_possession setting matches 2 run tellraw @a [{"text":" 狼憑き：1人(50%)","color":"aqua"}]
execute if score wolf_possession setting matches 3 run tellraw @a [{"text":" 狼憑き：1人(100%)","color":"aqua"}]

tellraw @a [{"text":"--------------------------------","color":"aqua"}]

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
scoreboard players set @a luminous_bottle 0
scoreboard players set @a blackout 0
scoreboard players set @a blackhole 0
scoreboard players set @a balloon 0
scoreboard players set @a item_select 0
scoreboard players set @a quartz_craft 0
scoreboard players set @a invincible_armor 0
scoreboard players set @a deadbody 0
scoreboard players set @a killlog_deathCount 0
scoreboard players set @a killlog_killcount 0
scoreboard players set camouflage setting 0

# 参加プレイヤーを抽選
tag @a remove join
scoreboard players set 参加希望者数 setting 0
execute store result score 参加希望者数 setting if entity @a[tag=join_request]
execute if score 参加希望者数 setting matches ..15 run tag @a[tag=join_request] add join
execute if score 参加希望者数 setting matches 16.. run tag @r[tag=join_request,limit=15] add join
execute if score 参加希望者数 setting matches 16.. run team join ghost @a[tag=join_request,tag=!join]
execute if score 参加希望者数 setting matches 16.. run tellraw @a [{"text":"参加希望者が16人を超えた為、以下のプレイヤーが観戦者となりました。\n"},{"selector":"@a[team=ghost]"}]

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
tag @a remove sharers
tag @a remove alice
tag @a remove thief
tag @a remove guard
tag @a remove villager
tag @a remove dammed
tag @a remove revival
tag @a remove wolf_possession

# チームから脱退
team leave @a

# その他
scoreboard objectives setdisplay sidebar
scoreboard players set @a[tag=join] actionbar 0

# 役職を配布
execute if score wolf setting matches 1 run tag @r[tag=join] add normal_wolf
execute if score wolf setting matches 2 run tag @r[tag=join,limit=2] add normal_wolf
execute if score wolf setting matches 3.. run tag @r[tag=join,limit=3] add normal_wolf
tag @a[tag=normal_wolf] add special_role
execute if score witch setting matches 1.. run tag @r[tag=join,tag=!special_role] add witch
tag @a[tag=witch] add special_role
execute if score faker setting matches 1.. run tag @r[tag=join,tag=!special_role] add faker
tag @a[tag=faker] add special_role
execute if score camouflager setting matches 1.. run tag @r[tag=join,tag=!special_role] add camouflager
tag @a[tag=camouflager] add special_role
execute if score cleaner setting matches 1.. run tag @r[tag=join,tag=!special_role] add cleaner
tag @a[tag=cleaner] add special_role
execute if score fanatic setting matches 1.. run tag @r[tag=join,tag=!special_role] add fanatic
tag @a[tag=fanatic] add special_role
execute if score madman setting matches 1.. run tag @r[tag=join,tag=!special_role] add madman
tag @a[tag=madman] add special_role

execute if score fox setting matches 1.. run tag @r[tag=join,tag=!special_role] add fox
tag @a[tag=fox] add special_role
execute if score immoralist setting matches 1.. run tag @r[tag=join,tag=!special_role] add immoral
tag @a[tag=immoral] add special_role
execute if score alice setting matches 1.. run tag @r[tag=join,tag=!special_role] add alice
tag @a[tag=alice] add special_role
team join alice @a[tag=alice]
execute if score thief setting matches 1.. run tag @r[tag=join,tag=!special_role] add thief
tag @a[tag=thief] add special_role
team join thief @a[tag=thief]

execute if score seer setting matches 1.. run tag @r[tag=join,tag=!special_role] add seer
tag @a[tag=seer] add special_role
execute if score medium setting matches 1.. run tag @r[tag=join,tag=!special_role] add medium
tag @a[tag=medium] add special_role
execute if score sharer setting matches 1.. run tag @r[tag=join,tag=!special_role,limit=2] add sharer
tag @a[team=sharer] add special_role
execute if score knight setting matches 1.. run tag @r[tag=join,tag=!special_role] add knight
tag @a[tag=knight] add special_role
execute if score detective setting matches 1.. run tag @r[tag=join,tag=!special_role] add detective
tag @a[tag=detective] add special_role
tag @a[tag=join,tag=!special_role] add villager
tag @a remove special_role

execute if score wolf_possession setting matches 1 if predicate werewolf:random_chance_30 run tag @r[tag=villager] add wolf_possession
execute if score wolf_possession setting matches 2 if predicate werewolf:random_chance_50 run tag @r[tag=villager] add wolf_possession
execute if score wolf_possession setting matches 3 if predicate werewolf:random_chance_100 run tag @r[tag=villager] add wolf_possession
execute if score dammed setting matches 1.. run tag @r[tag=villager] add dammed

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
scoreboard players set @a[tag=camouflager] actionbar 4
scoreboard players set @a[tag=cleaner] actionbar 5
scoreboard players set @a[tag=madman] actionbar 6
scoreboard players set @a[tag=fanatic] actionbar 7
scoreboard players set @a[tag=fox] actionbar 8
scoreboard players set @a[tag=immoral] actionbar 9
scoreboard players set @a[tag=thief] actionbar 10
scoreboard players set @a[tag=alice] actionbar 11
scoreboard players set @a[tag=seer] actionbar 12
scoreboard players set @a[tag=medium] actionbar 13
scoreboard players set @a[team=sharer] actionbar 14
scoreboard players set @a[tag=knight] actionbar 15
scoreboard players set @a[tag=detective] actionbar 16
scoreboard players set @a[tag=villager] actionbar 17

# プレイヤーナンバー
scoreboard players reset @a playernumber
scoreboard players set @a[tag=join] playernumber 0
execute as @a[sort=random,tag=join] store result score @s playernumber if entity @a[scores={playernumber=0}]

# 能力使用回数を設定
scoreboard players set @a ability_usecount 0
execute if score fake setting matches 1 run scoreboard players set @a[tag=cleaner] ability_usecount 5
execute if score fake setting matches 2 run scoreboard players set @a[tag=cleaner] ability_usecount 10
execute if score fake setting matches 3 run scoreboard players set @a[tag=cleaner] ability_usecount 20
execute if score fake setting matches 4 run scoreboard players set @a[tag=cleaner] ability_usecount 30
execute if score clean setting matches 1 run scoreboard players set @a[tag=cleaner] ability_usecount 1
scoreboard players operation @a[tag=cleaner] ability_usecount = clean setting
execute if score clean setting matches 2 run scoreboard players set @a[tag=cleaner] ability_usecount 2
execute if score clean setting matches 3 run scoreboard players set @a[tag=cleaner] ability_usecount 3
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
scoreboard objectives add penetrate trigger
scoreboard objectives add spirit trigger
scoreboard objectives add guard trigger
scoreboard objectives add thief trigger

# トリガー許可
scoreboard players enable @a[tag=seer] penetrate
scoreboard players enable @a[tag=medium] spirit
scoreboard players enable @a[tag=knight] guard
scoreboard players enable @a[tag=thief] thief

# いろいろ
scoreboard players set werewolf setting 1
execute if entity @a[tag=thief] run function werewolf:system/start/thief

# 初期アイテム
give @a[tag=join] bow{Enchantments:[{id:"power",lvl:255},{id:"infinity",lvl:1},{id:"vanishing_curse",lvl:1}],Unbreakable:1,display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 人狼用弓","italic":false,"color":"white"}]'}}
give @a[tag=join] arrow{Enchantments:[{id:"vanishing_curse",lvl:1}],display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 人狼用矢","italic":false,"color":"white"}]'}}
give @a[tag=join] quartz
item replace entity @a[scores={actionbar=2}] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},witch_use:1,Enchantments:[{id:"vanishing_curse",lvl:1}]}
item replace entity @a[scores={actionbar=3}] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},faker_use:1,Enchantments:[{id:"vanishing_curse",lvl:1}]}
item replace entity @a[scores={actionbar=4}] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},camouflager_use:1,Enchantments:[{id:"vanishing_curse",lvl:1}]}
item replace entity @a[scores={actionbar=5}] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},cleaner_use:1,Enchantments:[{id:"vanishing_curse",lvl:1}]}
item replace entity @a[scores={actionbar=12}] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},seer_use:1,Enchantments:[{id:"vanishing_curse",lvl:1}]}
item replace entity @a[scores={actionbar=13}] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},medium_use:1,Enchantments:[{id:"vanishing_curse",lvl:1}]}
item replace entity @a[scores={actionbar=15}] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},knight_use:1,Enchantments:[{id:"vanishing_curse",lvl:1}]}
item replace entity @a[scores={actionbar=16}] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},detective_use:1,Enchantments:[{id:"vanishing_curse",lvl:1}]}
item replace entity @a[tag=join,nbt=!{Inventory:[{id:"minecraft:nether_star"}]}] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},Enchantments:[{id:"vanishing_curse",lvl:1}]}

# 特殊アイテム
scoreboard players reset @a item
scoreboard players set @a[tag=join] item 0
execute as @a[tag=join,sort=random] store result score @s item if entity @a[scores={item=0}]
execute at @a[tag=join] run summon item ~ ~1 ~ {Tags:["special_item"],Item:{id:"minecraft:bedrock",Count:1b}}
execute as @a[scores={item=1}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 1
execute as @a[scores={item=2}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 2
execute as @a[scores={item=3}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 3
execute as @a[scores={item=4}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 4
execute as @a[scores={item=5}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 5
execute as @a[scores={item=6}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 6
execute as @a[scores={item=7}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 7
execute as @a[scores={item=8}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 8
execute as @a[scores={item=9}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 9
execute as @a[scores={item=10}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 10
execute as @a[scores={item=11}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 11
execute as @a[scores={item=12}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 12
execute as @a[scores={item=13}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 13
execute as @a[scores={item=14}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 14
execute as @a[scores={item=15}] at @s run data modify entity @e[type=item,tag=special_item,sort=nearest,limit=1] Item set from storage item 15
kill @e[tag=special_item,nbt={Item:{id:"minecraft:bedrock"}}]
item replace entity @a[tag=join] hotbar.7 with written_book{pages:['["",{"text":"\\u6751\\u4eba","color":"blue"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 1"}},{"text":"\\n\\n"},{"text":"\\u5360\\u3044\\u5e2b","color":"#CFC100"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 2"}},{"text":"\\n\\n"},{"text":"\\u970a\\u5a92\\u5e2b","color":"dark_aqua"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 3"}},{"text":"\\n\\n"},{"text":"\\u5171\\u6709\\u8005","color":"dark_green"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 4"}},{"text":"\\n\\n"},{"text":"\\u9a0e\\u58eb","color":"gold"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 5"}},{"text":"\\n\\n"},{"text":"\\u63a2\\u5075","color":"#A43D00"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 6"}}]','["",{"text":"\\u5996\\u72d0","color":"dark_purple"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 7"}},{"text":"\\n\\n"},{"text":"\\u80cc\\u5fb3\\u8005","color":"dark_gray"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 8"}},{"text":"\\n\\n"},{"text":"\\u602a\\u76d7","color":"gold"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 10"}},{"text":"\\n\\n"},{"text":"\\u30a2\\u30ea\\u30b9","color":"#CBA400"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 9"}}]','["",{"text":"\\u4eba\\u72fc","color":"dark_red"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 11"}},{"text":"\\n\\n"},{"text":"\\u9b54\\u5973","color":"dark_red"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 12"}},{"text":"\\n\\n"},{"text":"\\u30d5\\u30a7\\u30a4\\u30ab\\u30fc","color":"dark_red"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 13"}},{"text":"\\n\\n"},{"text":"\\u72c2\\u4eba","color":"light_purple"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 14"}},{"text":"\\n\\n"},{"text":"\\u72c2\\u4fe1\\u8005","color":"light_purple"},{"text":"\\u3092","color":"reset"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 15"}},{"text":"\\n "}]','["",{"text":"\\u767d\\u78ba\\u5b9a\\u3092"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 16"}},{"text":"\\n\\n\\u9ed2\\u78ba\\u5b9a\\u3092"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 17"}},{"text":"\\n\\n\\u7247\\u767d\\u3092"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 18"}},{"text":"\\n\\n\\u30b0\\u30ec\\u30fc\\u3092"},{"text":"CO\\u3059\\u308b","clickEvent":{"action":"run_command","value":"/trigger co set 19"}}]'],title:"役職CO本",author:"",Enchantments:[{id:"vanishing_curse",lvl:1}]}

# 無敵時間
scoreboard players operation #残り無敵時間 setting = #invincible_time setting
execute if score invincible_time setting matches 1.. run bossbar add invincible ""
execute store result bossbar invincible max run scoreboard players get #残り無敵時間 setting
bossbar set invincible_time players @a[tag=join_request]
bossbar set invincible_time color yellow

# 役職を通知
tag @a[tag=normal_wolf] add wolf
tag @a[tag=faker] add wolf
tag @a[tag=witch] add wolf
tag @a[tag=!normal_wolf,tag=!faker,tag=!witch] remove wolf

tellraw @s[tag=wolf] [{"text":"[Werewolf] ","color":"red"},{"text":"仲間の人狼:","color":"red"},{"selector":"@a[tag=wolf,distance=0.1..]"}]
tellraw @s[tag=fanatic] [{"text":"[Werewolf] ","color":"red"},{"text":"今回の人狼:","color":"red"},{"selector":"@a[tag=wolf]"}]

execute if score immoralist setting matches 1.. run tellraw @s[tag=fox] [{"text":"[Werewolf] ","color":"red"},{"text":"背徳者:","color":"#a042ff"},{"selector":"@a[tag=immoral]","color":"#a042ff"}]
execute if score fox setting matches 1.. run tellraw @s[tag=immoral] [{"text":"[Werewolf] ","color":"red"},{"text":"妖狐:","color":"gray"},{"selector":"@a[tag=fox]","color":"gray"}]

tellraw @s[tag=sharers] [{"text":"[Werewolf] ","color":"red"},{"text":"相方:","color":"green"},{"selector":"@a[tag=sharers,distance=0.1..]","color":"green"}]