# タグを付与
execute if entity @a[scores={mwd_abilities_penetrate=1}] run tag @a[scores={mwd_number=1}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=2}] run tag @a[scores={mwd_number=2}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=3}] run tag @a[scores={mwd_number=3}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=4}] run tag @a[scores={mwd_number=4}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=5}] run tag @a[scores={mwd_number=5}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=6}] run tag @a[scores={mwd_number=6}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=7}] run tag @a[scores={mwd_number=7}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=8}] run tag @a[scores={mwd_number=8}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=9}] run tag @a[scores={mwd_number=9}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=10}] run tag @a[scores={mwd_number=10}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=11}] run tag @a[scores={mwd_number=11}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=12}] run tag @a[scores={mwd_number=12}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=13}] run tag @a[scores={mwd_number=13}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=14}] run tag @a[scores={mwd_number=14}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=15}] run tag @a[scores={mwd_number=15}] add penetrate
execute if entity @a[scores={mwd_abilities_penetrate=16..}] run tag @a[scores={mwd_number=16}] add penetrate

# 占い結果
execute as @a[tag=penetrate,team=!mwd_spectator] if entity @s[scores={mwd_roles_wolf=1..2}] run tellraw @a[scores={mwd_abilities_penetrate=1..,mwd_roles_villager=1}] [{"selector":"@a[tag=penetrate]","color":"red"},{"text":"は人狼です。","color":"red"}]
execute as @a[tag=penetrate,team=!mwd_spectator] if entity @s[scores={mwd_roles_extra=1}] run tellraw @a[scores={mwd_abilities_penetrate=1..,mwd_roles_villager=1}] [{"selector":"@a[tag=penetrate]","color":"red"},{"text":"は人狼です。","color":"red"}]
execute as @a[tag=penetrate,team=!mwd_spectator] unless score @s mwd_roles_wolf matches 1..2 unless score @s mwd_roles_extra matches 1 run tellraw @a[scores={mwd_abilities_penetrate=1..,mwd_roles_villager=1}] [{"selector":"@a[tag=penetrate]","color":"#0080ff"},{"text":"は人狼ではありません。","color":"#0080ff"}]
execute as @a[tag=penetrate,team=mwd_spectator] run tellraw @a[scores={mwd_abilities_penetrate=1..,mwd_roles_villager=1}] [{"selector":"@a[tag=penetrate]","color":"gray"},{"text":"は死亡しています。","color":"gray"}]

# 怪盗に予言者を盗まれていた場合の占い結果
tellraw @a[scores={mwd_abilities_penetrate=1..,mwd_roles_villager=6}] [{"selector":"@a[tag=penetrate]","color":"#0080ff"},{"text":"は人狼ではありません。","color":"#0080ff"}]

# 呪殺
execute if entity @a[scores={mwd_abilities_penetrate=1..,mwd_roles_villager=1}] run damage @p[tag=penetrate,scores={mwd_roles_neutral=1}] 100
execute if entity @a[scores={mwd_abilities_penetrate=1..,mwd_roles_villager=1}] run tellraw @p[tag=penetrate,scores={mwd_roles_neutral=1}] [{"text":"あなたは占われた...。","color":"dark_purple"}]

# 占い時の音
execute as @a[scores={mwd_abilities_penetrate=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5

# スコアをセット
scoreboard players set @a[scores={mwd_abilities_penetrate=1..}] mwd_abilities 0
scoreboard players set @a mwd_abilities_penetrate 0

# タグを削除
tag @a remove penetrate