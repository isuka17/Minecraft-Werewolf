execute if score 無敵時間 setting matches 0 run item replace entity @s enderchest.10 with golden_chestplate{display:{Name:'{"text":"無敵時間 現在:0秒","color":"yellow","italic":false}'},pagechange:1}
execute if score 無敵時間 setting matches 1 run item replace entity @s enderchest.10 with golden_chestplate{display:{Name:'{"text":"無敵時間 現在:10秒","color":"yellow","italic":false}'},pagechange:1}
execute if score 無敵時間 setting matches 2 run item replace entity @s enderchest.10 with golden_chestplate{display:{Name:'{"text":"無敵時間 現在:20秒","color":"yellow","italic":false}'},pagechange:1}
execute if score 無敵時間 setting matches 3.. run item replace entity @s enderchest.10 with golden_chestplate{display:{Name:'{"text":"無敵時間 現在:30秒","color":"yellow","italic":false}'},pagechange:1}
execute if score 死体を生成 setting matches 0 run item replace entity @s enderchest.12 with redstone_ore{display:{Name:'{"text":"死体を生成 現在:オフ","color":"red","italic":false}'},pagechange:1}
execute if score 死体を生成 setting matches 1.. run item replace entity @s enderchest.12 with redstone_ore{display:{Name:'{"text":"死体を生成 現在:オン","color":"red","italic":false}'},pagechange:1}
execute if score クォーツ強化 setting matches 0 run item replace entity @s enderchest.14 with quartz{display:{Name:'{"text":"クォーツ強化 現在:オフ","color":"aqua","italic":false}'},pagechange:1}
execute if score クォーツ強化 setting matches 1.. run item replace entity @s enderchest.14 with quartz{display:{Name:'{"text":"クォーツ強化 現在:オン","color":"aqua","italic":false}'},pagechange:1}
item replace entity @s enderchest.16 with knowledge_book{display:{Name:'{"text":"ランダムスタート","color":"gold","italic":false}'},pagechange:1}
item replace entity @s enderchest.18 with barrier{display:{Name:'{"text":"前のページに戻る","color":"red","italic":false}'},pagechange:1}
scoreboard players set @s page 1