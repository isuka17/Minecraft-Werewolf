# ロードしたことを通知
execute as @a at @s run playsound block.note_block.bell master @s ~ ~ ~ 2 1
tellraw @a {"text":"マイクラ人狼がロードされました。","color":"green"}

# スコアボードを作成
scoreboard objectives add mwd_settings dummy {"text":"－ 設定 －"}
scoreboard objectives add mwd_settings_join trigger {"text":"参加設定"}
scoreboard objectives add mwd_number dummy {"text":"プレイヤーの番号"}
scoreboard objectives add mwd_death deathCount {"text":"死亡回数"}
scoreboard objectives add mwd_killlog_deathcount deathCount {"text":"キルログ"}
scoreboard objectives add mwd_killlog_killcount playerKillCount {"text":"キルログ"}

scoreboard objectives add mwd_selected_amethyst trigger {"text":"アイテムを選択"}
scoreboard objectives add mwd_crafted_amethyst crafted:amethyst_block {"text":"アメジストをクラフト"}

scoreboard objectives add mwd_roles_actionbar dummy {"text":"役職表示"}
scoreboard objectives add mwd_roles_wolf dummy {"text":"人狼役職"}
scoreboard objectives add mwd_roles_neutral dummy {"text":"第三陣営役職"}
scoreboard objectives add mwd_roles_villager dummy {"text":"村人役職"}
scoreboard objectives add mwd_roles_extra dummy {"text":"追加役職"}
scoreboard objectives add mwd_roles_wolf_number dummy {"text":"人狼の番号"}
scoreboard objectives add mwd_roles_villager_number dummy {"text":"村人の番号"}

scoreboard objectives add mwd_items_given dummy {"text":"アイテム配布"}
scoreboard objectives add mwd_items_nether_star dropped:nether_star {"text":"ネザースター"}
scoreboard objectives add mwd_items_luminous_powder dropped:blaze_powder {"text":"発光の粉"}
scoreboard objectives add mwd_items_positionchange_gem dropped:diamond {"text":"入れ替わりの宝石1"}
scoreboard objectives add mwd_items_positionchange_gem2 dropped:diamond {"text":"入れ替わりの宝石2"}
scoreboard objectives add mwd_items_blindness_record dropped:music_disc_11 {"text":"発光の粉"}
scoreboard objectives add mwd_items_balloon dummy {"text":"風船"}
scoreboard objectives add mwd_items_camouflage dropped:player_head {"text":"カモフラージュ"}
scoreboard objectives add mwd_items_skyhighdive dropped:golden_boots {"text":"スカイハイダイブ"}
scoreboard objectives add mwd_items_invincible_potion used:potion {"text":"無敵ポーション"}

scoreboard objectives add mwd_abilities dummy {"text":"能力使用回数"}
scoreboard objectives add mwd_abilities_create_madman trigger {"text":"狂人作成"}
scoreboard objectives add mwd_abilities_penetrate trigger {"text":"予言"}
scoreboard objectives add mwd_abilities_spirit trigger {"text":"霊媒"}
scoreboard objectives add mwd_abilities_guard trigger {"text":"護衛"}
scoreboard objectives add mwd_abilities_thief trigger {"text":"怪盗"}

scoreboard objectives add mwd_battlerecords_participants dummy {"text":"戦績:ゲーム参加数"}
scoreboard objectives add mwd_battlerecords_kills dummy {"text":"戦績:キル数"}
scoreboard objectives add mwd_battlerecords_deaths dummy {"text":"戦績:死亡数"}
scoreboard objectives add mwd_battlerecords_wins dummy {"text":"戦績:勝利数"}

execute unless score #werewolf mwd_settings matches 0.. run scoreboard players set #werewolf mwd_settings 1

# チームを作成
team add mwd_join {"text":"参加希望","color":"gold"}
team add mwd_spec {"text":"観戦する","color":"aqua"}
team add mwd_survivor {"text":"生存","color":"green"}
team add mwd_deceased {"text":"死亡","color":"red"}
team add mwd_wolf {"text":"人狼チャット","color":"red"}
team add mwd_fox {"text":"妖狐チャット","color":"#8000ff"}
team add mwd_sharer {"text":"共有者チャット","color":"green"}
team add mwd_fanatic {"text":"狂信者"}
team add mwd_madman {"text":"狂人"}
team add mwd_thief {"text":"怪盗"}
team add mwd_alice {"text":"アリス"}
team add mwd_forgotten {"text":"忘却者"}
team add mwd_seer {"text":"予言者"}
team add mwd_medium {"text":"霊媒師"}
team add mwd_knight {"text":"騎士"}
team add mwd_detective {"text":"探偵"}
team add mwd_villager1 {"text":"村人"}
team add mwd_villager2 {"text":"村人"}
team add mwd_villager3 {"text":"村人"}
team add mwd_villager4 {"text":"村人"}
team add mwd_villager5 {"text":"村人"}
team add mwd_villager6 {"text":"村人"}
team add mwd_villager7 {"text":"村人"}
team add mwd_villager8 {"text":"村人"}
team add mwd_villager9 {"text":"村人"}
team add mwd_villager10 {"text":"村人"}
team add mwd_villager11 {"text":"村人"}
team add mwd_villager12 {"text":"村人"}
team add mwd_villager13 {"text":"村人"}
team add mwd_villager14 {"text":"村人"}
team add mwd_villager15 {"text":"村人"}
team add mwd_dammed {"text":"村人"}
team add mwd_spectator {"text":"観戦チャット","color":"#8080ff"}
team add mwd_colors_red {"text":"赤"}
team add mwd_colors_pink {"text":"ピンク"}
team add mwd_colors_purple {"text":"紫"}
team add mwd_colors_gray {"text":"グレー"}
team add mwd_colors_orange {"text":"オレンジ"}
team add mwd_colors_yellow {"text":"黄色"}
team add mwd_colors_aqua {"text":"水色"}
team add mwd_colors_cyan {"text":"シアン"}
team add mwd_colors_green {"text":"緑"}

# チームを設定
team modify mwd_join prefix {"text":"✓ ","color":"gold"}
team modify mwd_spec prefix {"text":"x ","color":"dark_aqua"}
team modify mwd_survivor suffix {"text":" 生存","color":"green"}
team modify mwd_deceased suffix {"text":" 死亡","color":"red"}
team modify mwd_colors_red color red
team modify mwd_colors_pink color light_purple
team modify mwd_colors_purple color dark_purple
team modify mwd_colors_gray color gray
team modify mwd_colors_orange color gold
team modify mwd_colors_yellow color yellow
team modify mwd_colors_aqua color aqua
team modify mwd_colors_cyan color dark_aqua
team modify mwd_colors_green color green

team modify mwd_join nametagVisibility never
team modify mwd_spec nametagVisibility never
team modify mwd_wolf nametagVisibility never
team modify mwd_fox nametagVisibility never
team modify mwd_sharer nametagVisibility never
team modify mwd_fanatic nametagVisibility never
team modify mwd_madman nametagVisibility never
team modify mwd_thief nametagVisibility never
team modify mwd_alice nametagVisibility never
team modify mwd_forgotten nametagVisibility never
team modify mwd_seer nametagVisibility never
team modify mwd_medium nametagVisibility never
team modify mwd_knight nametagVisibility never
team modify mwd_detective nametagVisibility never
team modify mwd_villager1 nametagVisibility never
team modify mwd_villager2 nametagVisibility never
team modify mwd_villager3 nametagVisibility never
team modify mwd_villager4 nametagVisibility never
team modify mwd_villager5 nametagVisibility never
team modify mwd_villager6 nametagVisibility never
team modify mwd_villager7 nametagVisibility never
team modify mwd_villager8 nametagVisibility never
team modify mwd_villager9 nametagVisibility never
team modify mwd_villager10 nametagVisibility never
team modify mwd_villager11 nametagVisibility never
team modify mwd_villager12 nametagVisibility never
team modify mwd_villager13 nametagVisibility never
team modify mwd_villager14 nametagVisibility never
team modify mwd_villager15 nametagVisibility never
team modify mwd_dammed nametagVisibility never

# チームに追加
team join mwd_spec @a[team=]
team join mwd_colors_aqua 無敵時間
team join mwd_colors_yellow 発光時間
team join mwd_colors_red 人狼
team join mwd_colors_red 魔女
team join mwd_colors_pink 狂人
team join mwd_colors_pink 狂信者
team join mwd_colors_purple 妖狐
team join mwd_colors_gray 背徳者
team join mwd_colors_orange 怪盗
team join mwd_colors_yellow アリス
team join mwd_colors_gray 忘却者
team join mwd_colors_yellow 予言者
team join mwd_colors_cyan 霊媒師
team join mwd_colors_green 共有者
team join mwd_colors_orange 騎士
team join mwd_colors_orange 探偵
team join mwd_colors_green 狼憑き
team join mwd_colors_aqua 呪われし者
team join mwd_colors_pink アメジスト