#死体掃除
execute if entity @e[tag=deadbody,distance=..3] run tellraw @s [{"text":"死体を掃除しました。","color":"aqua"}]
execute unless entity @e[tag=deadbody,distance=..3] run tellraw @s [{"text":"付近に死体がありません。","color":"red"}]
execute if entity @e[tag=deadbody,distance=..3] run scoreboard players remove @s mwd_ability 1
execute if entity @e[tag=deadbody,distance=..3] at @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.5 2
kill @e[tag=deadbody,distance=..3,sort=nearest,limit=1]