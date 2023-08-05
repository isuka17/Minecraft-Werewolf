tag @s remove fanatic
tag @s remove fox
tag @s remove immoral
tag @s remove villager
tag @s remove seer
tag @s remove medium
tag @s remove knight
tag @s remove detective
tag @s remove sharers
tag @s remove alice
tag @s remove thief
tag @s remove guard
tag @s remove lover
team join madman @s

tag @s add madman
scoreboard players set @s actionbar 4
tellraw @s [{"text":"魔女の秘薬によって狂人に変異させられた！","bold":true,"color":"light_purple"}]
tellraw @a[tag=witch] [{"selector":"@s","bold":true,"color":"light_purple"},{"text":"を狂人に変異させました。"}]
playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 2 1
scoreboard players set @a[tag=witch] ability_usecount 0