# クォーツをクラフトしたプレイヤーに実行
tellraw @a[scores={mwd_crafted_quartz=1..}] [{"text":"---------------------------","color":"white"}]
tellraw @a[scores={mwd_crafted_quartz=1..}] [{"text":" 能力使用回数を増やす","color":"white"},{"text":" → ","color":"white"},{"text":"選択","color":"#80cfff","bold":true,"clickEvent":{"action":"run_command","value":"/trigger mwd_selected_quartz set -1"}}]
tellraw @a[scores={mwd_crafted_quartz=1..}] [{"text":" 選んだアイテムを入手する","color":"white"},{"text":" → ","color":"white"},{"text":"選択","color":"#80cfff","bold":true,"clickEvent":{"action":"run_command","value":"/trigger mwd_selected_quartz set -2"}}]
tellraw @a[scores={mwd_crafted_quartz=1..}] [{"text":"---------------------------","color":"white"}]
execute as @a[scores={mwd_crafted_quartz=1..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard players enable @a[scores={mwd_crafted_quartz=1..}] mwd_selected_quartz

# 能力使用回数を増やす
execute as @a[scores={mwd_selected_quartz=-1}] at @s run function isuka17_mwd:quartz/add_ability

# 選んだアイテムを入手する
execute as @a[scores={mwd_selected_quartz=-2}] at @s run function isuka17_mwd:quartz/selected_items

# クォーツブロックをclear
clear @a[scores={mwd_crafted_quartz=1..}] quartz_block

# スコアをセット
scoreboard players set @a mwd_selected_quartz 0
scoreboard players set @a mwd_crafted_quartz 0