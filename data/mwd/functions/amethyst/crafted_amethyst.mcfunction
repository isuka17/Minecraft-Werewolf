# クォーツをクラフトしたプレイヤーに実行
tellraw @a[scores={mwd_crafted_amethyst=1..}] [{"text":"＊---------------------------＊","color":"white"}]
tellraw @a[scores={mwd_crafted_amethyst=1..,mwd_roles_wolf=3}] [{"text":"  人狼を把握する","color":"white"},{"text":" → ","color":"white"},{"text":"選択","color":"#80cfff","bold":true,"clickEvent":{"action":"run_command","value":"/trigger mwd_selected_amethyst set -3"}}]
tellraw @a[scores={mwd_crafted_amethyst=1..,mwd_abilities=0}] [{"text":"  能力使用回数を増やす","color":"white"},{"text":" → ","color":"white"},{"text":"選択","color":"#80cfff","bold":true,"clickEvent":{"action":"run_command","value":"/trigger mwd_selected_amethyst set -1"}}]
tellraw @a[scores={mwd_crafted_amethyst=1..}] [{"text":"  選んだアイテムを入手する","color":"white"},{"text":" → ","color":"white"},{"text":"選択","color":"#80cfff","bold":true,"clickEvent":{"action":"run_command","value":"/trigger mwd_selected_amethyst set -2"}}]
tellraw @a[scores={mwd_crafted_amethyst=1..}] [{"text":"＊---------------------------＊","color":"white"}]
execute as @a[scores={mwd_crafted_amethyst=1..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard players enable @a[scores={mwd_crafted_amethyst=1..}] mwd_selected_amethyst

# 人狼を把握する
tellraw @a[scores={mwd_selected_amethyst=-3}] [{"text":"今回の人狼："},{"selector":"@a[scores={mwd_roles_wolf=1}]","color":"red"}]
execute as @a[scores={mwd_selected_amethyst=-3}] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 0.7

# 能力使用回数を増やす
execute as @a[scores={mwd_selected_amethyst=-1}] at @s run function mwd:amethyst/add_abilities

# 選んだアイテムを入手する
execute as @a[scores={mwd_selected_amethyst=-2}] at @s run function mwd:amethyst/selected_items

# クォーツブロックをclear
clear @a amethyst_block

# スコアをセット
scoreboard players set @a[scores={mwd_selected_amethyst=-3..-1}] mwd_selected_amethyst 0
scoreboard players set @a mwd_crafted_amethyst 0