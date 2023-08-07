# 盗まれていなかった場合
execute if entity @s[tag=witch] if entity @a[tag=!wolf,distance=..3,limit=1,sort=nearest] run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 1 2
execute if entity @s[tag=witch] unless entity @a[tag=!wolf,distance=..3,limit=1,sort=nearest] run tellraw @s [{"text":"[Werewolf] ","color":"red"},{"text":"付近に人狼以外のプレイヤーが居ません。"}]
execute if entity @s[tag=witch] as @a[tag=!wolf,distance=..3,limit=1,sort=nearest] run function werewolf:system/ability/witch/remove_tags

# 盗まれていた場合
tag @s[tag=!witch] add not_witch_tmp
execute if entity @s[tag=!witch] if entity @a[tag=!not_witch_tmp,tag=!wolf,distance=..3,limit=1,sort=nearest] run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 1 2
execute if entity @s[tag=!witch] unless entity @a[tag=!not_witch_tmp,tag=!wolf,distance=..3,limit=1,sort=nearest] run tellraw @s [{"text":"[Werewolf] ","color":"red"},{"text":"付近に人狼以外のプレイヤーが居ません。"}]
execute if entity @s[tag=!witch] if entity @a[tag=!not_witch_tmp,tag=!wolf,distance=..3,limit=1,sort=nearest] run tellraw @s [{"selector":"@a[distance=..5,limit=1,sort=nearest,tag=!wolf]","bold":true,"color":"light_purple"},{"text":"を狂人に変異させました。"}]
execute if entity @s[tag=!witch] if entity @a[tag=!not_witch_tmp,tag=!wolf,distance=..3,limit=1,sort=nearest] run scoreboard players set @s ability_usecount 0
tag @s[tag=!witch] remove not_witch_tmp