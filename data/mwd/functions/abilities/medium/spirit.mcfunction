# spiritタグを付与
execute if entity @a[scores={mwd_abilities_spirit=1}] run tag @a[scores={mwd_number=1}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=2}] run tag @a[scores={mwd_number=2}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=3}] run tag @a[scores={mwd_number=3}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=4}] run tag @a[scores={mwd_number=4}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=5}] run tag @a[scores={mwd_number=5}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=6}] run tag @a[scores={mwd_number=6}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=7}] run tag @a[scores={mwd_number=7}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=8}] run tag @a[scores={mwd_number=8}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=9}] run tag @a[scores={mwd_number=9}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=10}] run tag @a[scores={mwd_number=10}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=11}] run tag @a[scores={mwd_number=11}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=12}] run tag @a[scores={mwd_number=12}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=13}] run tag @a[scores={mwd_number=13}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=14}] run tag @a[scores={mwd_number=14}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=15}] run tag @a[scores={mwd_number=15}] add spirit
execute if entity @a[scores={mwd_abilities_spirit=16..}] run tag @a[scores={mwd_number=16}] add spirit

# 霊媒結果
execute as @a[tag=spirit,team=mwd_spectator] if entity @s[scores={mwd_roles_wolf=1}] run tellraw @a[scores={mwd_abilities_spirit=1..,mwd_roles_villager=2}] [{"selector":"@a[tag=spirit]","color":"red"},{"text":"は人狼です。","color":"red"}]
execute as @a[tag=spirit,team=mwd_spectator] unless entity @s[scores={mwd_roles_wolf=1}] run tellraw @a[scores={mwd_abilities_spirit=1..,mwd_roles_villager=2}] [{"selector":"@a[tag=spirit]","color":"#0080ff"},{"text":"は人狼ではありません。","color":"#0080ff"}]
execute as @a[tag=spirit,team=!mwd_spectator] run tellraw @a[scores={mwd_abilities_spirit=1..,mwd_roles_villager=2}] [{"selector":"@a[tag=spirit]","color":"green"},{"text":"は生存しています。","color":"green"}]

# 怪盗に盗まれていた場合の霊媒結果
tellraw @a[scores={mwd_abilities_spirit=1..,mwd_roles_villager=6}] [{"selector":"@a[tag=spirit]","color":"#0080ff"},{"text":"は人狼ではありません。","color":"#0080ff"}]

# 霊媒時の音
execute as @a[scores={mwd_abilities_spirit=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5

# スコアをセット
scoreboard players set @a[scores={mwd_abilities_spirit=1..}] mwd_abilities 0
scoreboard players set @a mwd_abilities_spirit 0

# タグを削除
tag @a remove spirit