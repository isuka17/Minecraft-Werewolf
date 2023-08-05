# spiritタグを付与
execute if entity @a[scores={spirit=1}] run tag @a[scores={playernumber=1}] add spirit
execute if entity @a[scores={spirit=2}] run tag @a[scores={playernumber=2}] add spirit
execute if entity @a[scores={spirit=3}] run tag @a[scores={playernumber=3}] add spirit
execute if entity @a[scores={spirit=4}] run tag @a[scores={playernumber=4}] add spirit
execute if entity @a[scores={spirit=5}] run tag @a[scores={playernumber=5}] add spirit
execute if entity @a[scores={spirit=6}] run tag @a[scores={playernumber=6}] add spirit
execute if entity @a[scores={spirit=7}] run tag @a[scores={playernumber=7}] add spirit
execute if entity @a[scores={spirit=8}] run tag @a[scores={playernumber=8}] add spirit
execute if entity @a[scores={spirit=9}] run tag @a[scores={playernumber=9}] add spirit
execute if entity @a[scores={spirit=10}] run tag @a[scores={playernumber=10}] add spirit
execute if entity @a[scores={spirit=11}] run tag @a[scores={playernumber=11}] add spirit
execute if entity @a[scores={spirit=12}] run tag @a[scores={playernumber=12}] add spirit
execute if entity @a[scores={spirit=13}] run tag @a[scores={playernumber=13}] add spirit
execute if entity @a[scores={spirit=14}] run tag @a[scores={playernumber=14}] add spirit
execute if entity @a[scores={spirit=15..}] run tag @a[scores={playernumber=15}] add spirit

# 霊媒(wolfタグを所持しているか所持していないかで判別)
execute if entity @a[tag=wolf,tag=spirit,team=ghost] run tellraw @a[scores={spirit=1..},tag=medium] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=spirit]","color":"red"},{"text":"は人狼です。","color":"red"}]
execute if entity @a[tag=!wolf,tag=spirit,team=ghost] run tellraw @a[scores={spirit=1..},tag=medium] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=spirit]","color":"#0080ff"},{"text":"は人狼ではありません。","color":"#0080ff"}]
execute if entity @a[tag=spirit,team=!ghost] run tellraw @a[scores={spirit=1..},tag=medium] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=spirit]","color":"gray"},{"text":"生存しています。","color":"green"}]

# 怪盗に盗まれていた場合の霊媒結果
tellraw @a[scores={spirit=1..},tag=!medium] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=spirit]","color":"#0080ff"},{"text":"は人狼ではありません。","color":"#0080ff"}]

# 後処理(spiritタグを削除、スコアをセット)
execute as @a[scores={spirit=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
scoreboard players set @a[scores={spirit=1..}] ability_usecount 0
scoreboard players set @a spirit 0
tag @a remove spirit