#クォーツ強化
scoreboard players add quartz setting 1
execute if score quartz setting matches 2 run scoreboard players set quartz setting 0

item replace entity @s enderchest.12 with quartz{display:{Name:'{"text":"クォーツ設定","color":"aqua","italic":false}',Lore:['[{"text":"[","color":"white","italic":false},{"keybind":"key.attack","color":"light_purple","italic":false},{"text":"] または ","color":"white","italic":false}]','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"light_purple","italic":false},{"text":"] で"},{"text":"クォーツ設定","color":"aqua"},{"text":"ページに移動する"}]']},pagechange:1}

team add aqua
team modify aqua color aqua

scoreboard players reset クォーツ強化:オン setting_preview

execute if score quartz setting matches 1 run scoreboard players set クォーツ強化:オン setting_preview -27


team join aqua クォーツ強化:オン
