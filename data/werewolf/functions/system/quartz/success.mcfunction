#成功
execute as @s at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute if entity @s[tag=!seer,tag=!medium,tag=!detective] run function werewolf:system/quartz/item_select
execute if entity @s[tag=seer] run scoreboard players enable @s f
execute if entity @s[tag=medium] run scoreboard players enable @s m
execute if entity @s[tag=detective] run scoreboard players enable @s d
execute if entity @s[tag=seer] run scoreboard players set @s ability_usecount 1
execute if entity @s[tag=medium] run scoreboard players set @s ability_usecount 1
execute if entity @s[tag=detective] run scoreboard players set @s ability_usecount 1