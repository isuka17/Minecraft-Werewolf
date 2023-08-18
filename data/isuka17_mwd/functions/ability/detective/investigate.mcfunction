# 付近を調査
execute if entity @e[tag=wolf_deadbody,distance=..3,sort=nearest,limit=1] run tellraw @s[tag=detective] [{"text":"この死体は人狼です。","color":"red"}]
execute if entity @e[tag=notwolf_deadbody,distance=..3,sort=nearest,limit=1] run tellraw @s[tag=detective] [{"text":"この死体は人狼ではありません。","color":"#0080ff"}]
execute if entity @e[tag=wolf_deadbody,distance=..3,sort=nearest,limit=1] run tellraw @s[tag=!detective] [{"text":"この死体は人狼ではありません。","color":"#0080ff"}]
execute if entity @e[tag=notwolf_deadbody,distance=..3,sort=nearest,limit=1] run tellraw @s[tag=!detective] [{"text":"この死体は人狼ではありません。","color":"#0080ff"}]
execute unless entity @e[distance=..3,tag=deadbody] unless entity @e[distance=..3,tag=wolf_deadbody] unless entity @e[distance=..3,tag=notwolf_deadbody] run tellraw @s [{"text":"付近に死体がありません。","color":"green"}]

# 後処理(スコアをセット)
execute if entity @e[tag=wolf_deadbody,distance=..3,sort=nearest,limit=1] run scoreboard players remove @s mwd_ability 1
execute if entity @e[tag=notwolf_deadbody,distance=..3,sort=nearest,limit=1] run scoreboard players remove @s mwd_ability 1
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5