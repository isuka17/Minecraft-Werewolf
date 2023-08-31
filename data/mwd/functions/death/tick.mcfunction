# 騎士の護衛解除/背徳者の道連れ
execute if entity @a[scores={mwd_death=1..,mwd_roles_villager=4}] run tag @a remove guard
execute if entity @a[scores={mwd_death=1..,mwd_roles_neutral=1}] run kill @a[scores={mwd_roles_neutral=2},team=!mwd_spectator]

#　キルログ
execute if score #werewolf mwd_settings matches 1.. if entity @a[scores={mwd_killlog_killcount=1..}] run tellraw @a[team=mwd_spectator] [{"selector":"@a[scores={mwd_killlog_killcount=1..}]","color":"red"},{"text":" → "},{"selector":"@a[scores={mwd_killlog_deathcount=1..}]"},{"text":" 死亡"}]

# 死者にメッセージ
execute if score #werewolf mwd_settings matches 1.. as @a[scores={mwd_death=1..}] unless entity @s[scores={mwd_roles_extra=2}] run tellraw @s [{"text":"あなたは死亡しました。\n/tm <text>で死者・観戦者とチャットができます。","color":"gray"}]

# チーム加入
execute if score #werewolf mwd_settings matches 1.. run team join mwd_spectator @a[scores={mwd_death=1..}]
gamemode spectator @a[team=mwd_spectator]

# 死体を生成
execute if score #死体を生成 mwd_settings matches 1.. as @a[scores={mwd_death=1..}] at @s run function mwd:death/deadbody

# 戦績
execute if score #werewolf mwd_settings matches 1.. run scoreboard players add @a[scores={mwd_death=1..}] mwd_battlerecords_deaths 1

# 後処理(スコアリセット)
scoreboard players set @a mwd_death 0
scoreboard players set @a mwd_killlog_deathcount 0
scoreboard players set @a mwd_killlog_killcount 0