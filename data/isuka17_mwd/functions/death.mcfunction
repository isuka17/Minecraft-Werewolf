# 騎士の護衛解除/道連れ
execute if entity @a[scores={mwd_death=1..},tag=knight] run tag @a remove guard
execute if entity @a[scores={mwd_death=1..},tag=fox] run kill @a[tag=immoralist,team=!mwd_ghost]

#　キルログ
execute if score #werewolf mwd_settings matches 1.. if entity @a[scores={mwd_killlog_killcount=1..}] run tellraw @a[team=mwd_ghost] [{"selector":"@a[scores={mwd_killlog_killcount=1..}]"},{"text":" → "},{"selector":"@a[scores={mwd_killlog_deathcount=1..}]"},{"text":" 死亡"}]

# 死者にメッセージ
execute if score #werewolf mwd_settings matches 1.. run tellraw @a[scores={mwd_death=1..},tag=!dammed] [{"text":"あなたは死亡しました。","color":"gray"}]
execute if score #werewolf mwd_settings matches 1.. run tellraw @a[scores={mwd_death=1..},tag=!dammed] [{"text":"/tm <text>で霊界チャットができます。","color":"gray"}]

# チーム加入
execute if score #werewolf mwd_settings matches 1.. run team join mwd_ghost @a[scores={mwd_death=1..}]
gamemode spectator @a[team=mwd_ghost]

# 死体を生成
execute if score deadbody mwd_settings matches 1.. as @a[scores={mwd_death=1..}] at @s run function werewolf:system/deadbody

# 後処理(スコアリセット)
scoreboard players set @a mwd_death 0
scoreboard players set @a mwd_killlog_deathcount 0
scoreboard players set @a mwd_killlog_killcount 0