#アンストール

kill @e[tag=random_start]

# スコアボードを削除
scoreboard objectives remove setting
scoreboard objectives remove playernumber
scoreboard objectives remove item
scoreboard objectives remove deadbody
scoreboard objectives remove co
scoreboard objectives remove item_select
scoreboard objectives remove death_process
scoreboard objectives remove join
scoreboard objectives remove actionbar
scoreboard objectives remove quartz_craft
scoreboard objectives remove flamethrower
scoreboard objectives remove blackhole
scoreboard objectives remove luminous_bottle
scoreboard objectives remove blackout
scoreboard objectives remove knight_guard
scoreboard objectives remove balloon
scoreboard objectives remove invincible_armor
scoreboard objectives remove positionchange_book
scoreboard objectives remove shuffle
scoreboard objectives remove ability_usecount
scoreboard objectives remove page
scoreboard objectives remove teleporter_use
scoreboard objectives remove skyhighdive
scoreboard objectives remove random_start
scoreboard objectives remove allplayer_role
scoreboard objectives remove penetrate
scoreboard objectives remove guard
scoreboard objectives remove spirit
scoreboard objectives remove thief
scoreboard objectives remove setting_preview
scoreboard objectives remove killlog_killcount
scoreboard objectives remove killlog_deathcount

# チーム削除
team remove wolf
team remove fox
team remove ghost
team remove sharers
team remove lover
team remove players
team remove thief
team remove alice
team remove detective
team remove seer
team remove medium
team remove knight
team remove villager1
team remove villager2
team remove villager3
team remove villager4
team remove villager5
team remove villager6
team remove villager7
team remove villager8
team remove villager9
team remove villager10
team remove villager11
team remove villager12
team remove villager13
team remove villager14

# 通知
tellraw @a {"text":"Minecraft人狼のアンインストールが完了しました。"}
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1