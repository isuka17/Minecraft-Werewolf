#ランダムスタート
scoreboard players set @e[tag=mwd_random_start] mwd_random_start 0
execute as @e[tag=mwd_random_start,sort=random] store result score @s mwd_random_start if entity @e[scores={mwd_random_start=0}]

tp @a[scores={mwd_number=1}] @e[scores={mwd_random_start=1},limit=1]
tp @a[scores={mwd_number=2}] @e[scores={mwd_random_start=2},limit=1]
tp @a[scores={mwd_number=3}] @e[scores={mwd_random_start=3},limit=1]
tp @a[scores={mwd_number=4}] @e[scores={mwd_random_start=4},limit=1]
tp @a[scores={mwd_number=5}] @e[scores={mwd_random_start=5},limit=1]
tp @a[scores={mwd_number=6}] @e[scores={mwd_random_start=6},limit=1]
tp @a[scores={mwd_number=7}] @e[scores={mwd_random_start=7},limit=1]
tp @a[scores={mwd_number=8}] @e[scores={mwd_random_start=8},limit=1]
tp @a[scores={mwd_number=9}] @e[scores={mwd_random_start=9},limit=1]
tp @a[scores={mwd_number=10}] @e[scores={mwd_random_start=10},limit=1]
tp @a[scores={mwd_number=11}] @e[scores={mwd_random_start=11},limit=1]
tp @a[scores={mwd_number=12}] @e[scores={mwd_random_start=12},limit=1]
tp @a[scores={mwd_number=13}] @e[scores={mwd_random_start=13},limit=1]
tp @a[scores={mwd_number=14}] @e[scores={mwd_random_start=14},limit=1]
tp @a[scores={mwd_number=15}] @e[scores={mwd_random_start=15},limit=1]

execute if score ランダムスタート mwd_settings matches 1.. as @a at @s run playsound minecraft:entity.wolf.howl master @s ~ ~ ~ 1 1