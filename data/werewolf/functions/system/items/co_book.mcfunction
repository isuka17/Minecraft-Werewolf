#役職CO
scoreboard players enable @a[tag=join] co
execute if entity @a[scores={co=1..}] as @a[tag=join] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.8

execute if entity @a[scores={co=1}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=1}]","color":"blue"},{"text":" → 村人CO"}]
execute if entity @a[scores={co=2}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=2}]","color":"yellow"},{"text":" → 預言者CO"}]
execute if entity @a[scores={co=3}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=3}]","color":"dark_aqua"},{"text":" → 霊媒師CO"}]
execute if entity @a[scores={co=4}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=4}]","color":"green"},{"text":" → 共有者CO"}]
execute if entity @a[scores={co=5}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=5}]","color":"gold"},{"text":" → 騎士CO"}]
execute if entity @a[scores={co=6}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=6}]","color":"#a65300"},{"text":" → 探偵CO"}]
execute if entity @a[scores={co=7}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=7}]","color":"dark_purple"},{"text":" → 妖狐CO"}]
execute if entity @a[scores={co=8}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=8}]","color":"dark_gray"},{"text":" → 背徳者CO"}]
execute if entity @a[scores={co=9}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=9}]","color":"yellow"},{"text":" → アリスCO"}]
execute if entity @a[scores={co=10}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=10}]","color":"#ff5800"},{"text":" → 怪盗CO"}]
execute if entity @a[scores={co=11}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=11}]","color":"red"},{"text":" → 人狼CO"}]
execute if entity @a[scores={co=12}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=12}]","color":"red"},{"text":" → 魔女CO"}]
execute if entity @a[scores={co=13}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=13}]","color":"red"},{"text":" → フェイカーCO"}]
execute if entity @a[scores={co=14}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=14}]","color":"light_purple"},{"text":" → 狂人CO"}]
execute if entity @a[scores={co=15}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=15}]","color":"light_purple"},{"text":" → 狂信者CO"}]
execute if entity @a[scores={co=16}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=16}]","color":"white"},{"text":" → 白確定CO"}]
execute if entity @a[scores={co=17}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=17}]","color":"dark_gray"},{"text":" → 黒確定CO"}]
execute if entity @a[scores={co=18}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=18}]","color":"white"},{"text":" → 片白CO"}]
execute if entity @a[scores={co=19}] run tellraw @a[tag=join] [{"selector":"@a[scores={co=19}]","color":"gray"},{"text":" → グレーCO"}]

scoreboard players set @a co 0