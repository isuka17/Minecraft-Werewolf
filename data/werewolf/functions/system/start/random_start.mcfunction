#ランダムスタート
scoreboard players set @e[tag=random_start] random_start 0
execute as @e[tag=random_start,sort=random] store result score @s random_start if entity @e[scores={random_start=0}]

tp @a[scores={playernumber=1}] @e[scores={random_start=1},limit=1]
tp @a[scores={playernumber=2}] @e[scores={random_start=2},limit=1]
tp @a[scores={playernumber=3}] @e[scores={random_start=3},limit=1]
tp @a[scores={playernumber=4}] @e[scores={random_start=4},limit=1]
tp @a[scores={playernumber=5}] @e[scores={random_start=5},limit=1]
tp @a[scores={playernumber=6}] @e[scores={random_start=6},limit=1]
tp @a[scores={playernumber=7}] @e[scores={random_start=7},limit=1]
tp @a[scores={playernumber=8}] @e[scores={random_start=8},limit=1]
tp @a[scores={playernumber=9}] @e[scores={random_start=9},limit=1]
tp @a[scores={playernumber=10}] @e[scores={random_start=10},limit=1]
tp @a[scores={playernumber=11}] @e[scores={random_start=11},limit=1]
tp @a[scores={playernumber=12}] @e[scores={random_start=12},limit=1]
tp @a[scores={playernumber=13}] @e[scores={random_start=13},limit=1]
tp @a[scores={playernumber=14}] @e[scores={random_start=14},limit=1]
tp @a[scores={playernumber=15}] @e[scores={random_start=15},limit=1]

execute if score ランダムスタート setting matches 1.. as @a at @s run playsound minecraft:entity.wolf.howl master @s ~ ~ ~ 1 1