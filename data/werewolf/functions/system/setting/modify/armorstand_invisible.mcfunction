#透明化/可視化
scoreboard players add #透明化/可視化 setting 1
execute if score #透明化/可視化 setting matches 2 run scoreboard players set #透明化/可視化 setting 0

execute if score #透明化/可視化 setting matches 0 run tellraw @s [{"text":"防具立てを","color":"gold"},{"text":"可視化","bold":true},{"text":"しました。","bold":false}]
execute if score #透明化/可視化 setting matches 1 run tellraw @s [{"text":"防具立てを","color":"gold"},{"text":"透明化","bold":true},{"text":"しました。","bold":false}]

execute if score #透明化/可視化 setting matches 0 as @e[tag=random_start] run data modify entity @s Invisible set value 0
execute if score #透明化/可視化 setting matches 0 as @e[tag=random_start] run data modify entity @s Marker set value 0
execute if score #透明化/可視化 setting matches 1 as @e[tag=random_start] run data modify entity @s Invisible set value 1
execute if score #透明化/可視化 setting matches 1 as @e[tag=random_start] run data modify entity @s Marker set value 1

item replace entity @s enderchest.16 with ender_eye{display:{Name:'{"text":"ランダムスタート地点を可視化/透明化","color":"aqua","italic":false}'},pagechange:1}