#> スタンボール
execute at @e[type=snowball] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Small:1,Invisible:1,NoGravity:1,Tags:["stanball"]}
execute as @e[type=armor_stand,tag=stanball,scores={fwd_settings=1}] at @s run kill @e[type=minecraft:armor_stand,tag=stanball,scores={fwd_settings=2},distance=..5]

# 当たった時の処理
execute at @e[type=armor_stand,tag=stanball,scores={fwd_settings=2}] run effect give @a[distance=..3.5,team=!ghost] blindness 5 0 true
execute at @e[type=armor_stand,tag=stanball,scores={fwd_settings=2}] if entity @a[distance=..3.5,team=!ghost] run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a
execute at @e[type=armor_stand,tag=stanball,scores={fwd_settings=2}] if entity @a[distance=..3.5,team=!ghost] run particle end_rod ~ ~1 ~ 0 0 0 0.5 50 force @a
execute at @e[type=armor_stand,tag=stanball,scores={fwd_settings=2}] if entity @a[distance=..3.5,team=!ghost] run playsound entity.elder_guardian.curse master @a ~ ~ ~ 2 2

# 雪玉に音とパーティクル
execute at @e[type=snowball] run particle minecraft:end_rod ~ ~0.15 ~ 0 0 0 0.2 2 force @a
execute at @e[type=snowball] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 2 1.4

# その他
scoreboard players add @e[type=minecraft:armor_stand,tag=stanball] fwd_settings 1
kill @e[type=armor_stand,tag=stanball,scores={fwd_settings=5..}]