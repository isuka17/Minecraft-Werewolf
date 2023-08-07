#スタンボール
execute at @e[type=snowball] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Small:1,Invisible:1,NoGravity:1,Tags:["stanball"]}
scoreboard players add @e[type=minecraft:armor_stand,tag=stanball] setting 1
execute as @e[type=armor_stand,tag=stanball,scores={setting=1}] at @s run kill @e[type=minecraft:armor_stand,tag=stanball,scores={setting=2},distance=..5]
execute at @e[type=snowball] run particle minecraft:end_rod ~ ~0.15 ~ 0 0 0 0.2 2 force @a
execute at @e[type=snowball] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 2 1.4
execute at @e[type=armor_stand,tag=stanball,scores={setting=2}] run effect give @a[distance=..3.5,team=!ghost] blindness 5 0 true
execute at @e[type=armor_stand,tag=stanball,scores={setting=2}] if entity @a[distance=..3.5,team=!ghost] run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a
execute at @e[type=armor_stand,tag=stanball,scores={setting=2}] if entity @a[distance=..3.5,team=!ghost] run particle end_rod ~ ~1 ~ 0 0 0 0.5 50 force @a
execute at @e[type=armor_stand,tag=stanball,scores={setting=2}] if entity @a[distance=..3.5,team=!ghost] run playsound entity.elder_guardian.curse master @a ~ ~ ~ 2 2
kill @e[type=armor_stand,tag=stanball,scores={setting=5..}]