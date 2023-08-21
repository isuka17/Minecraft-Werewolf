#呪われし者の覚醒
summon armor_stand ~ ~ ~ {Tags:["dammed_revive_point"],Invisible:1,Marker:1}
tellraw @a[team=mwd_ghost] [{"selector":"@s"},{"text":" → 覚醒"}]
tellraw @s [{"text":"あなたは呪われし者でした。"}]
execute at @s run tellraw @s [{"text":"仲間の人狼："},{"selector":"@a[tag=wolf,distance=0.1..]"}]
title @s times 10 70 20
title @s title {"text":"人狼に殺され、覚醒した","color":"red","bold":true}
scoreboard players set @s death 0
scoreboard players set @s actionbar 1
team join wolf @s
tag @s add normal_wolf
tag @s remove villager
tag @s add revive
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 1.5
gamemode adventure @s
give @s bow{Enchantments:[{id:"power",lvl:255},{id:"infinity",lvl:1},{id:"vanishing_curse",lvl:1}],Unbreakable:1,display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 人狼用弓","italic":false,"color":"white"}]'}}
give @s arrow{Enchantments:[{id:"vanishing_curse",lvl:1}],display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 人狼用矢","italic":false,"color":"white"}]'}}