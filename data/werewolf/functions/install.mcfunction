# スコアボードを作成
scoreboard objectives add setting dummy {"text":"ゲーム設定","color":"red","bold":true}
scoreboard objectives add playernumber dummy {"text":"プレイヤー番号","color":"red","bold":true}
scoreboard objectives add item dummy {"text":"アイテム配布","color":"red","bold":true}
scoreboard objectives add deadbody deathCount {"text":"死体生成用の死亡チェック","color":"red","bold":true}
scoreboard objectives add co trigger {"text":"役職CO","color":"red","bold":true}
scoreboard objectives add item_select trigger {"text":"アイテム選択","color":"red","bold":true}
scoreboard objectives add deadsetting deathCount {"text":"死亡設定","color":"red","bold":true}
scoreboard objectives add join trigger {"text":"参加設定","color":"red","bold":true}
scoreboard objectives add actionbar trigger {"text":"役職表示","color":"red","bold":true}
scoreboard objectives add quartz_craft crafted:quartz_block {"text":"クォーツクラフト","color":"red","bold":true}
scoreboard objectives add blackhole dummy {"text":"ブラックホール1","color":"red","bold":true}
scoreboard objectives add luminous_bottle used:experience_bottle {"text":"発光の瓶","color":"red","bold":true}
scoreboard objectives add blackout used:goat_horn {"text":"ブラックアウト","color":"red","bold":true}
scoreboard objectives add knight_guard minecraft.custom:minecraft.damage_resisted {"text":"騎士の護衛","color":"red","bold":true}
scoreboard objectives add mine used:iron_helmet {"text":"地雷","color":"red","bold":true}
scoreboard objectives add balloon dummy {"text":"風船","color":"red","bold":true}
scoreboard objectives add invincible_armor used:netherite_chestplate {"text":"無敵の鎧","color":"aqua","bold":true}
scoreboard objectives add positionchange_book minecraft.used:minecraft.knowledge_book {"text":"入れ替わりの書1","color":"red","bold":true}
scoreboard objectives add shuffle dummy {"text":"入れ替わりの書2","color":"red","bold":true}
scoreboard objectives add ability_usecount dummy {"text":"能力使用権","color":"red","bold":true}
scoreboard objectives add page dummy {"text":"ページ数","color":"red","bold":true}
scoreboard objectives add skyhighdive used:golden_boots {"text":"スカイハイダイブ","color":"red","bold":true}
scoreboard objectives add random_start dummy {"text":"ランダムスタート","color":"red","bold":true}
scoreboard objectives add killlog_killcount playerKillCount {"text":"キルログ1","color":"red","bold":true}
scoreboard objectives add killlog_deathcount deathCount {"text":"キルログ2","color":"red","bold":true}

# 初期設定
execute unless score wolf setting matches 0.. run scoreboard players set wolf setting 0
execute unless score witch setting matches 0.. run scoreboard players set witch setting 0
execute unless score faker setting matches 0.. run scoreboard players set faker setting 0
execute unless score camouflager setting matches 0.. run scoreboard players set camouflager setting 0
execute unless score cleaner setting matches 0.. run scoreboard players set cleaner setting 0
execute unless score madman setting matches 0.. run scoreboard players set madman setting 0
execute unless score fanatic setting matches 0.. run scoreboard players set fanatic setting 0
execute unless score fox setting matches 0.. run scoreboard players set fox setting 0
execute unless score immoralist setting matches 0.. run scoreboard players set immoralist setting 0
execute unless score thief setting matches 0.. run scoreboard players set thief setting 0
execute unless score alice setting matches 0.. run scoreboard players set alice setting 0
execute unless score seer setting matches 0.. run scoreboard players set seer setting 0
execute unless score medium setting matches 0.. run scoreboard players set medium setting 0
execute unless score sharer setting matches 0.. run scoreboard players set sharer setting 0
execute unless score knight setting matches 0.. run scoreboard players set knight setting 0
execute unless score detective setting matches 0.. run scoreboard players set detective setting 0
execute unless score 呪殺 setting matches 0.. run scoreboard players set 呪殺 setting 0
execute unless score 無敵時間 setting matches 0.. run scoreboard players set 無敵時間 setting 0
execute unless score 死体を生成 setting matches 0.. run scoreboard players set 死体を生成 setting 0
execute unless score クォーツ強化 setting matches 0.. run scoreboard players set クォーツ強化 setting 0
execute unless score ランダムスタート setting matches 0.. run scoreboard players set ランダムスタート setting 0
scoreboard players set werewolf setting 0

# チーム作成
team add wolf {"text":"人狼","color":"red","bold":true}
team add fox {"text":"妖狐","color":"dark_purple","bold":true}
team add sharer {"text":"共有者","color":"green","bold":true}
team add ghost {"text":"霊界","color":"blue","bold":true}
team add thief {"text":"怪盗","color":"#ff5800"}
team add madman {"text":"狂人","color":"light_purple"}
team add alice {"text":"アリス","color":"yellow"}
team add seer {"text":"占い師","color":"yellow"}
team add medium {"text":"霊媒師","color":"dark_aqua"}
team add knight {"text":"騎士","color":"gold"}
team add detective {"text":"探偵","color":"#933a00"}
team add villager1 {"text":"村人","color":"#0080ff"}
team add villager2 {"text":"村人","color":"#0080ff"}
team add villager3 {"text":"村人","color":"#0080ff"}
team add villager4 {"text":"村人","color":"#0080ff"}
team add villager5 {"text":"村人","color":"#0080ff"}
team add villager6 {"text":"村人","color":"#0080ff"}
team add villager7 {"text":"村人","color":"#0080ff"}
team add villager8 {"text":"村人","color":"#0080ff"}
team add villager9 {"text":"村人","color":"#0080ff"}
team add villager10 {"text":"村人","color":"#0080ff"}
team add villager11 {"text":"村人","color":"#0080ff"}
team add villager12 {"text":"村人","color":"#0080ff"}
team add villager13 {"text":"村人","color":"#0080ff"}
team add villager14 {"text":"村人","color":"#0080ff"}
team add join_request {"text":"参加希望","color":"gold"}
team add not_join_request {"text":"参加しない","color":"dark_aqua"}

team modify wolf nametagVisibility never
team modify fox nametagVisibility never
team modify sharer nametagVisibility never
team modify thief nametagVisibility never
team modify madman nametagVisibility never
team modify alice nametagVisibility never
team modify seer nametagVisibility never
team modify medium nametagVisibility never
team modify knight nametagVisibility never
team modify detective nametagVisibility never
team modify villager1 nametagVisibility never
team modify villager2 nametagVisibility never
team modify villager3 nametagVisibility never
team modify villager4 nametagVisibility never
team modify villager5 nametagVisibility never
team modify villager6 nametagVisibility never
team modify villager7 nametagVisibility never
team modify villager8 nametagVisibility never
team modify villager9 nametagVisibility never
team modify villager10 nametagVisibility never
team modify villager11 nametagVisibility never
team modify villager12 nametagVisibility never
team modify villager13 nametagVisibility never
team modify villager14 nametagVisibility never

team modify join_request prefix {"text":"✓ ","color":"gold"}
team modify not_join_request prefix {"text":"x ","color":"dark_aqua"}

# 通知
tellraw @a {"text":"Minecraft人狼のインストールが完了しました。"}
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2