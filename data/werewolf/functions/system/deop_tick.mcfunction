#自分以外管理権限を剥奪
execute as @a[scores={deop=1..}] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 2 1.2
scoreboard players enable @a[scores={deop=1..}] deop

execute if entity @a[scores={deop=1}] run tag @a[scores={deop_num=1}] add deop
execute if entity @a[scores={deop=2}] run tag @a[scores={deop_num=2}] add deop
execute if entity @a[scores={deop=3}] run tag @a[scores={deop_num=3}] add deop
execute if entity @a[scores={deop=4}] run tag @a[scores={deop_num=4}] add deop
execute if entity @a[scores={deop=5}] run tag @a[scores={deop_num=5}] add deop
execute if entity @a[scores={deop=6}] run tag @a[scores={deop_num=6}] add deop
execute if entity @a[scores={deop=7}] run tag @a[scores={deop_num=7}] add deop
execute if entity @a[scores={deop=8}] run tag @a[scores={deop_num=8}] add deop
execute if entity @a[scores={deop=9}] run tag @a[scores={deop_num=9}] add deop
execute if entity @a[scores={deop=10}] run tag @a[scores={deop_num=10}] add deop
execute if entity @a[scores={deop=11}] run tag @a[scores={deop_num=11}] add deop
execute if entity @a[scores={deop=12}] run tag @a[scores={deop_num=12}] add deop
execute if entity @a[scores={deop=13}] run tag @a[scores={deop_num=13}] add deop
execute if entity @a[scores={deop=14}] run tag @a[scores={deop_num=14}] add deop
execute if entity @a[scores={deop=15}] run tag @a[scores={deop_num=15}] add deop
tag @a[scores={deop=16..}] add deop_tmp
execute if entity @a[scores={deop=16..}] run tag @a[tag=!deop_tmp] add deop

tellraw @a[scores={deop=1}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=2}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=3}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=4}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=5}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=6}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=7}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=8}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=9}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=10}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=11}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=12}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=13}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=14}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=15}] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=deop]"},{"text":"から管理権限を剥奪しました。"}]
tellraw @a[scores={deop=16}] [{"text":"[Werewolf] ","color":"red"},{"text":"自分以外全員から管理権限を剥奪しました。"}]

scoreboard players reset @a[tag=deop] page

tag @a remove deop
scoreboard players set @a deop 0