#護衛

# guardタグを付与
execute if entity @a[scores={g=1..},tag=knight] run tag @a remove guard
execute if entity @a[scores={g=1}] run tag @a[scores={playernumber=1}] add guard
execute if entity @a[scores={g=2}] run tag @a[scores={playernumber=2}] add guard
execute if entity @a[scores={g=3}] run tag @a[scores={playernumber=3}] add guard
execute if entity @a[scores={g=4}] run tag @a[scores={playernumber=4}] add guard
execute if entity @a[scores={g=5}] run tag @a[scores={playernumber=5}] add guard
execute if entity @a[scores={g=6}] run tag @a[scores={playernumber=6}] add guard
execute if entity @a[scores={g=7}] run tag @a[scores={playernumber=7}] add guard
execute if entity @a[scores={g=8}] run tag @a[scores={playernumber=8}] add guard
execute if entity @a[scores={g=9}] run tag @a[scores={playernumber=9}] add guard
execute if entity @a[scores={g=10}] run tag @a[scores={playernumber=10}] add guard
execute if entity @a[scores={g=11}] run tag @a[scores={playernumber=11}] add guard
execute if entity @a[scores={g=12}] run tag @a[scores={playernumber=12}] add guard
execute if entity @a[scores={g=13}] run tag @a[scores={playernumber=13}] add guard
execute if entity @a[scores={g=14}] run tag @a[scores={playernumber=14}] add guard
execute if entity @a[scores={g=15..}] run tag @a[scores={playernumber=15}] add guard

# 通知
tellraw @a[scores={g=1..},tag=knight] [{"selector":"@a[tag=guard]","color":"gold","bold":true},{"text":"を護衛しました。"}]

tellraw @a[scores={g=1},tag=!knight] [{"selector":"@a[scores={playernumber=1}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=2},tag=!knight] [{"selector":"@a[scores={playernumber=2}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=3},tag=!knight] [{"selector":"@a[scores={playernumber=3}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=4},tag=!knight] [{"selector":"@a[scores={playernumber=4}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=5},tag=!knight] [{"selector":"@a[scores={playernumber=5}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=6},tag=!knight] [{"selector":"@a[scores={playernumber=6}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=7},tag=!knight] [{"selector":"@a[scores={playernumber=7}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=8},tag=!knight] [{"selector":"@a[scores={playernumber=8}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=9},tag=!knight] [{"selector":"@a[scores={playernumber=9}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=10},tag=!knight] [{"selector":"@a[scores={playernumber=10}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=11},tag=!knight] [{"selector":"@a[scores={playernumber=11}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=12},tag=!knight] [{"selector":"@a[scores={playernumber=12}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=13},tag=!knight] [{"selector":"@a[scores={playernumber=13}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=14},tag=!knight] [{"selector":"@a[scores={playernumber=14}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
tellraw @a[scores={g=15},tag=!knight] [{"selector":"@a[scores={playernumber=15}]","color":"gold","bold":true},{"text":"を護衛しました。"}]
execute as @a[scores={g=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5

# 護衛システム
effect give @a[tag=guard] resistance 1 5 true
execute at @a[tag=guard,scores={knight_guard=200..}] run playsound block.anvil.place master @a ~ ~ ~ 2 1.5
tellraw @a[tag=guard,scores={knight_guard=200..}] {"text":"騎士によって護られた！","color":"gold","bold":true}
execute if entity @a[tag=guard,scores={knight_guard=200..}] run tellraw @a[tag=knight] {"text":"護衛対象が攻撃を受けた！","color":"gold","bold":true}
execute if entity @a[tag=guard,scores={knight_guard=200..}] as @a[tag=knight] at @s run playsound block.anvil.place master @s ~ ~ ~ 1 1.5
tag @a[scores={knight_guard=200..}] remove guard
scoreboard players set @a knight_guard 0

# 後処理(guardタグを削除、スコアをセット)
execute if entity @a[scores={g=1..},tag=!knight] run tag @a remove guard
scoreboard players set @a[scores={g=1..}] ability_usecount 0
scoreboard players set @a g 0