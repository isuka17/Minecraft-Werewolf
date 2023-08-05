#狂人作成
execute as @s at @s unless entity @a[distance=..3,limit=1,sort=nearest,tag=!wolf] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
execute as @s[tag=witch] at @s if entity @a[distance=..3,limit=1,sort=nearest,tag=!wolf] run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 1 2
execute at @s unless entity @a[distance=..3,limit=1,sort=nearest,tag=!wolf] run tellraw @s {"text":"付近に人狼以外のプレイヤーが居ません。","color":"red","bold":true}
execute at @s[tag=witch] as @a[distance=..3,limit=1,sort=nearest,tag=!wolf] run function werewolf:system/ability/witch/tag_remove
execute at @s[tag=!witch] as @a[distance=..3,limit=1,sort=nearest,tag=!wolf] run tellraw @s [{"selector":"@a[distance=..5,limit=1,sort=nearest,tag=!wolf]","bold":true,"color":"light_purple"},{"text":"を狂人に変異させました。"}]
execute at @s[tag=!witch] as @a[distance=..3,limit=1,sort=nearest,tag=!wolf] run scoreboard players set @s ability_usecount 0