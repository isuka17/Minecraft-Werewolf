# 騎士の護衛解除/道連れ
execute if entity @a[scores={death_process=1..},tag=knight] run tag @a remove guard
execute if entity @a[scores={death_process=1..},tag=fox] run kill @a[tag=immoralist]

#　キルログ
execute if score werewolf setting matches 1.. if entity @a[scores={killlog_killcount=1..}] run tellraw @a[team=ghost] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[scores={killlog_killcount=1..}]"},{"text":" → "},{"selector":"@a[scores={killlog_deathcount=1..}]"},{"text":" 死亡"}]

# 死者にメッセージ
execute if score werewolf setting matches 1.. run tellraw @a[scores={death_process=1..},tag=!dammed] [{"text":"[Werewolf] ","color":"red"},{"text":"あなたは死亡しました。","color":"gray"}]
execute if score werewolf setting matches 1.. run tellraw @a[scores={death_process=1..},tag=!dammed] [{"text":"[Werewolf] ","color":"red"},{"text":"/tm <message>で霊界チャットができます。","color":"gray"}]

# チーム加入
execute if score werewolf setting matches 1.. run team join ghost @a[scores={death_process=1..}]
gamemode spectator @a[team=ghost]

# 死体を生成
execute if score deadbody setting matches 1.. as @a[scores={death_process=1..}] at @s run function werewolf:system/deadbody

# 後処理(スコアリセット)
scoreboard players set @a death_process 0
scoreboard players set @a killlog_deathcount 0
scoreboard players set @a killlog_killcount 0