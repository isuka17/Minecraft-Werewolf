#タグを付与
execute if entity @a[scores={penetrate=1}] run tag @a[scores={mwd_number=1}] add penetrate
execute if entity @a[scores={penetrate=2}] run tag @a[scores={mwd_number=2}] add penetrate
execute if entity @a[scores={penetrate=3}] run tag @a[scores={mwd_number=3}] add penetrate
execute if entity @a[scores={penetrate=4}] run tag @a[scores={mwd_number=4}] add penetrate
execute if entity @a[scores={penetrate=5}] run tag @a[scores={mwd_number=5}] add penetrate
execute if entity @a[scores={penetrate=6}] run tag @a[scores={mwd_number=6}] add penetrate
execute if entity @a[scores={penetrate=7}] run tag @a[scores={mwd_number=7}] add penetrate
execute if entity @a[scores={penetrate=8}] run tag @a[scores={mwd_number=8}] add penetrate
execute if entity @a[scores={penetrate=9}] run tag @a[scores={mwd_number=9}] add penetrate
execute if entity @a[scores={penetrate=10}] run tag @a[scores={mwd_number=10}] add penetrate
execute if entity @a[scores={penetrate=11}] run tag @a[scores={mwd_number=11}] add penetrate
execute if entity @a[scores={penetrate=12}] run tag @a[scores={mwd_number=12}] add penetrate
execute if entity @a[scores={penetrate=13}] run tag @a[scores={mwd_number=13}] add penetrate
execute if entity @a[scores={penetrate=14}] run tag @a[scores={mwd_number=14}] add penetrate
execute if entity @a[scores={penetrate=15..}] run tag @a[scores={mwd_number=15}] add penetrate

# wolfタグを所持しているか所持していないかで判別
execute if entity @a[tag=wolf,tag=penetrate,team=!mwd_ghost] run tellraw @a[scores={penetrate=1..},tag=seer] [{"selector":"@a[tag=penetrate]","color":"red"},{"text":"は人狼です。","color":"red"}]
execute if entity @a[tag=wolf_possession,tag=!wolf,tag=penetrate,team=!mwd_ghost] run tellraw @a[scores={penetrate=1..},tag=seer] [{"selector":"@a[tag=penetrate]","color":"red"},{"text":"は人狼です。","color":"red"}]
execute if entity @a[tag=!wolf,tag=!wolf_possession,tag=penetrate,team=!mwd_ghost] run tellraw @a[scores={penetrate=1..},tag=seer] [{"selector":"@a[tag=penetrate]","color":"#0080ff"},{"text":"は人狼ではありません。","color":"#0080ff"}]
execute if entity @a[tag=penetrate,team=mwd_ghost] run tellraw @a[scores={penetrate=1..},tag=seer] [{"selector":"@a[tag=penetrate]","color":"gray"},{"text":"は既に死亡しています。","color":"gray"}]

# 怪盗に予言者を盗まれていた場合の占い結果
tellraw @a[scores={penetrate=1..},tag=!seer] [{"selector":"@a[tag=penetrate]","color":"#0080ff"},{"text":"は人狼ではありません。","color":"#0080ff"}]

# 妖狐がpenetrateタグを所持していた場合、呪殺される
execute if entity @a[scores={penetrate=1..},tag=seer] run damage @a[tag=fox,tag=penetrate,limit=1] 100
execute if entity @a[scores={penetrate=1..},tag=seer] run tellraw @a[tag=fox,tag=penetrate] [{"text":"あなたは占われました...","color":"dark_purple","bold":true}]

# 後処理(penetrateタグを削除、スコアをセット)
execute as @a[scores={penetrate=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
scoreboard players set @a[scores={penetrate=1..}] mwd_ability 0
scoreboard players set @a penetrate 0
tag @a remove penetrate