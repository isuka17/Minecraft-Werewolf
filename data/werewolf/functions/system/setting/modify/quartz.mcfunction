#クォーツ強化
scoreboard players add quartz setting 1
execute if score quartz setting matches 2 run scoreboard players set quartz setting 0

execute if score quartz setting matches 0 run item replace entity @s enderchest.14 with quartz{display:{Name:'{"text":"クォーツ強化 現在:オフ","color":"aqua","italic":false}'},pagechange:1}
execute if score quartz setting matches 1.. run item replace entity @s enderchest.14 with quartz{display:{Name:'{"text":"クォーツ強化 現在:オン","color":"aqua","italic":false}'},pagechange:1}

team add aqua
team modify aqua color aqua

scoreboard players reset クォーツ強化:オン setting_preview

execute if score quartz setting matches 1 run scoreboard players set クォーツ強化:オン setting_preview -27


team join aqua クォーツ強化:オン
