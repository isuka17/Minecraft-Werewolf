#クォーツ強化
scoreboard players add クォーツ強化 setting 1
execute if score クォーツ強化 setting matches 2 run scoreboard players set クォーツ強化 setting 0

execute if score クォーツ強化 setting matches 0 run tellraw @s [{"text":"クォーツ強化を","color":"aqua"},{"text":"オフ","bold":true},{"text":"に設定しました。","bold":false}]
execute if score クォーツ強化 setting matches 1.. run tellraw @s [{"text":"クォーツ強化を","color":"aqua"},{"text":"オン","bold":true},{"text":"に設定しました。","bold":false}]

execute if score クォーツ強化 setting matches 0 run item replace entity @s enderchest.14 with quartz{display:{Name:'{"text":"クォーツ強化 現在:オフ","color":"aqua","italic":false}'},pagechange:1}
execute if score クォーツ強化 setting matches 1.. run item replace entity @s enderchest.14 with quartz{display:{Name:'{"text":"クォーツ強化 現在:オン","color":"aqua","italic":false}'},pagechange:1}

team add aqua
team modify aqua color aqua

scoreboard players reset クォーツ強化:オン setting_view

execute if score クォーツ強化 setting matches 1 run scoreboard players set クォーツ強化:オン setting_view -27


team join aqua クォーツ強化:オン
