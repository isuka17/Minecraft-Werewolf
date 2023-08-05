title @a title {"text":"ゲーム開始","color":"gold","bold":true}
execute if score ランダムスタート setting matches 0 as @a at @s run playsound minecraft:entity.wolf.howl master @s ~ ~ ~ 1 1
function werewolf:system/start/casting
schedule clear werewolf:system/start/countdown/0
schedule clear werewolf:system/start/countdown/1
schedule clear werewolf:system/start/countdown/2
schedule clear werewolf:system/start/countdown/3
schedule clear werewolf:system/start/countdown/4

execute as @e[tag=random_start] run data modify entity @s Invisible set value 1
execute as @e[tag=random_start] run data modify entity @s Marker set value 1