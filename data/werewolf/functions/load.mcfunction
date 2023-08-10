# ロード時のメッセージ
tellraw @a [{"text":"[Werewolf] ","color":"red"},{"text":"データパックがロードされました。","color":"green"}]
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 2 1

# スコアボードを作成
scoreboard objectives add mwd_settings dummy {"text":"ゲーム設定","color":"red"}
scoreboard objectives add co trigger {"text":"役職CO","color":"red"}
scoreboard objectives add mwd_number dummy {"text":"プレイヤー番号","color":"red"}
scoreboard objectives add mwd_items_give dummy {"text":"アイテム配布","color":"red"}
scoreboard objectives add mwd_items_select trigger {"text":"アイテム選択","color":"red"}
scoreboard objectives add mwd_items_blackhole dummy {"text":"ブラックホール1","color":"red"}
scoreboard objectives add mwd_items_luminous_bottle used:experience_bottle {"text":"発光の瓶","color":"red"}
scoreboard objectives add mwd_items_blackout used:goat_horn {"text":"ブラックアウト","color":"red"}
scoreboard objectives add mwd_death deathCount {"text":"死亡時の処理","color":"red"}
scoreboard objectives add join trigger {"text":"参加設定","color":"red"}
scoreboard objectives add actionbar trigger {"text":"役職表示","color":"red"}
scoreboard objectives add quartz_craft crafted:quartz_block {"text":"クォーツクラフト","color":"red"}
scoreboard objectives add knight_guard minecraft.custom:minecraft.damage_resisted {"text":"騎士の護衛","color":"red"}
scoreboard objectives add balloon dummy {"text":"風船","color":"red"}
scoreboard objectives add invincible_armor used:netherite_chestplate {"text":"無敵の鎧","color":"aqua"}
scoreboard objectives add positionchange_book minecraft.used:minecraft.knowledge_book {"text":"入れ替わりの書1","color":"red"}
scoreboard objectives add shuffle dummy {"text":"入れ替わりの書2","color":"red"}
scoreboard objectives add ability_usecount dummy {"text":"能力使用権","color":"red"}
scoreboard objectives add page dummy {"text":"ページ数","color":"red"}
scoreboard objectives add skyhighdive used:golden_boots {"text":"スカイハイダイブ","color":"red"}
scoreboard objectives add mwd_random_start dummy {"text":"ランダムスタート","color":"red"}
scoreboard objectives add mwd_killlog_killcount playerKillCount {"text":"キルログ1","color":"red"}
scoreboard objectives add mwd_killlog_deathcount deathCount {"text":"キルログ2","color":"red"}

# 初期設定
execute unless score wolf mwd_settings matches 0.. run scoreboard players set wolf mwd_settings 0
execute unless score witch mwd_settings matches 0.. run scoreboard players set witch mwd_settings 0
execute unless score faker mwd_settings matches 0.. run scoreboard players set faker mwd_settings 0
execute unless score madman mwd_settings matches 0.. run scoreboard players set madman mwd_settings 0
execute unless score fanatic mwd_settings matches 0.. run scoreboard players set fanatic mwd_settings 0
execute unless score fox mwd_settings matches 0.. run scoreboard players set fox mwd_settings 0
execute unless score immoralist mwd_settings matches 0.. run scoreboard players set immoralist mwd_settings 0
execute unless score thief mwd_settings matches 0.. run scoreboard players set thief mwd_settings 0
execute unless score alice mwd_settings matches 0.. run scoreboard players set alice mwd_settings 0
execute unless score seer mwd_settings matches 0.. run scoreboard players set seer mwd_settings 0
execute unless score medium mwd_settings matches 0.. run scoreboard players set medium mwd_settings 0
execute unless score sharer mwd_settings matches 0.. run scoreboard players set sharer mwd_settings 0
execute unless score knight mwd_settings matches 0.. run scoreboard players set knight mwd_settings 0
execute unless score detective mwd_settings matches 0.. run scoreboard players set detective mwd_settings 0
execute unless score invincible_time mwd_settings matches 0.. run scoreboard players set invincible_time mwd_settings 0
execute unless score deadbody mwd_settings matches 0.. run scoreboard players set deadbody mwd_settings 0
execute unless score quartz mwd_settings matches 0.. run scoreboard players set quartz mwd_settings 0
execute unless score random_start mwd_settings matches 0.. run scoreboard players set random_start mwd_settings 0
scoreboard players set werewolf mwd_settings 0

# チーム作成
team add wolf {"text":"人狼チャット","color":"red"}
team add fox {"text":"妖狐チャット","color":"dark_purple"}
team add sharer {"text":"共有者チャット","color":"green"}
team add ghost {"text":"霊界チャット","color":"blue"}
team add thief {"text":"怪盗","color":"#ff5800"}
team add madman {"text":"狂人","color":"light_purple"}
team add alice {"text":"アリス","color":"yellow"}
team add seer {"text":"予言者","color":"yellow"}
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
team add villager15 {"text":"村人","color":"#0080ff"}
team add join_request {"text":"参加希望","color":"gold"}
team add not_join {"text":"参加しない","color":"dark_aqua"}

# チーム設定
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
team modify not_join prefix {"text":"x ","color":"dark_aqua"}