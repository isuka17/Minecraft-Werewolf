title @a title {"text":"ゲーム開始","color":"gold","bold":true}
execute if score ランダムスタート mwd_settings matches 0 as @a at @s run playsound minecraft:entity.wolf.howl master @s ~ ~ ~ 1 1
function isuka17_mwd:start/start
schedule clear isuka17_mwd:start/countdown/0
schedule clear isuka17_mwd:start/countdown/1
schedule clear isuka17_mwd:start/countdown/2
schedule clear isuka17_mwd:start/countdown/3
schedule clear isuka17_mwd:start/countdown/4

execute as @e[tag=random_start] run data modify entity @s Invisible set value 1
execute as @e[tag=random_start] run data modify entity @s Marker set value 1