# ロード時のメッセージ
tellraw @a [{"text":"データパックがロードされました。","color":"green"}]
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 2 1

# スコアボードを作成
scoreboard objectives add mwd_settings dummy {"text":"－ 設定 －"}
scoreboard objectives add mwd_roles_wolf dummy {"text":"[Minecraft人狼] 村人陣営","color":"red"}
scoreboard objectives add mwd_roles_neutral dummy {"text":"[Minecraft人狼] 第3陣営","color":"red"}
scoreboard objectives add mwd_roles_villager dummy {"text":"[Minecraft人狼] 人狼陣営","color":"red"}
scoreboard objectives add mwd_roles_other dummy {"text":"[Minecraft人狼] その他役職","color":"red"}
scoreboard objectives add mwd_comingout trigger {"text":"[Minecraft人狼] 役職CO","color":"red"}
scoreboard objectives add mwd_number dummy {"text":"[Minecraft人狼] プレイヤー番号","color":"red"}
scoreboard objectives add mwd_items_given dummy {"text":"[Minecraft人狼] アイテム配布","color":"red"}
scoreboard objectives add mwd_items_select trigger {"text":"[Minecraft人狼] アイテム選択","color":"red"}
scoreboard objectives add mwd_items_blackhole dummy {"text":"[Minecraft人狼] ブラックホール1","color":"red"}
scoreboard objectives add mwd_items_luminous_bottle used:experience_bottle {"text":"[Minecraft人狼] 発光の瓶","color":"red"}
scoreboard objectives add mwd_items_blackout used:goat_horn {"text":"[Minecraft人狼] ブラックアウト","color":"red"}
scoreboard objectives add mwd_death deathCount {"text":"[Minecraft人狼] 死亡時の処理","color":"red"}
scoreboard objectives add mwd_join trigger {"text":"[Minecraft人狼] 参加設定","color":"red"}
scoreboard objectives add mwd_actionbar trigger {"text":"[Minecraft人狼] 役職表示","color":"red"}
scoreboard objectives add crafted_quartz crafted:quartz_block {"text":"[Minecraft人狼] クォーツクラフト","color":"red"}
scoreboard objectives add knight_guard minecraft.custom:minecraft.damage_resisted {"text":"[Minecraft人狼] 騎士の護衛","color":"red"}
scoreboard objectives add balloon dummy {"text":"[Minecraft人狼] 風船","color":"red"}
scoreboard objectives add invincible_armor used:netherite_chestplate {"text":"[Minecraft人狼] 無敵の鎧","color":"aqua"}
scoreboard objectives add shuffle_book minecraft.used:minecraft.knowledge_book {"text":"[Minecraft人狼] 入れ替わりの書1","color":"red"}
scoreboard objectives add shuffle dummy {"text":"[Minecraft人狼] 入れ替わりの書2","color":"red"}
scoreboard objectives add mwd_ability dummy {"text":"[Minecraft人狼] 能力使用権","color":"red"}
scoreboard objectives add page dummy {"text":"[Minecraft人狼] ページ数","color":"red"}
scoreboard objectives add skyhighdive used:golden_boots {"text":"[Minecraft人狼] スカイハイダイブ","color":"red"}
scoreboard objectives add mwd_random_start dummy {"text":"[Minecraft人狼] ランダムスタート","color":"red"}
scoreboard objectives add mwd_killlog_killcount playerKillCount {"text":"[Minecraft人狼] キルログ1","color":"red"}
scoreboard objectives add mwd_killlog_deathcount deathCount {"text":"[Minecraft人狼] キルログ2","color":"red"}

# 初期設定
execute unless score 人狼 mwd_settings matches 0.. run scoreboard players set 人狼 mwd_settings 0
execute unless score 狂人 mwd_settings matches 0.. run scoreboard players set 狂人 mwd_settings 0
execute unless score 狂信者 mwd_settings matches 0.. run scoreboard players set 狂信者 mwd_settings 0
execute unless score 妖狐 mwd_settings matches 0.. run scoreboard players set 妖狐 mwd_settings 0
execute unless score 背徳者 mwd_settings matches 0.. run scoreboard players set 背徳者 mwd_settings 0
execute unless score 怪盗 mwd_settings matches 0.. run scoreboard players set 怪盗 mwd_settings 0
execute unless score アリス mwd_settings matches 0.. run scoreboard players set アリス mwd_settings 0
execute unless score 予言者 mwd_settings matches 0.. run scoreboard players set 予言者 mwd_settings 0
execute unless score 霊媒師 mwd_settings matches 0.. run scoreboard players set 霊媒師 mwd_settings 0
execute unless score 共有者 mwd_settings matches 0.. run scoreboard players set 共有者 mwd_settings 0
execute unless score 騎士 mwd_settings matches 0.. run scoreboard players set 騎士 mwd_settings 0
execute unless score 探偵 mwd_settings matches 0.. run scoreboard players set 探偵 mwd_settings 0
execute unless score 制限時間 mwd_settings matches 0.. run scoreboard players set 制限時間 mwd_settings 600
execute unless score 無敵時間 mwd_settings matches 0.. run scoreboard players set 無敵時間 mwd_settings 10
execute unless score #死体を生成 mwd_settings matches 0.. run scoreboard players set #死体を生成 mwd_settings 1
execute unless score #クォーツ mwd_settings matches 0.. run scoreboard players set #クォーツ mwd_settings 0
execute unless score #ランダムスタート mwd_settings matches 0.. run scoreboard players set #ランダムスタート mwd_settings 0
scoreboard players set #werewolf mwd_settings 0

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
team modify villager15 nametagVisibility never
team modify villager16 nametagVisibility never

team modify join_request prefix {"text":"✓ ","color":"gold"}
team modify not_join prefix {"text":"x ","color":"dark_aqua"}