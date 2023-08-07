#死体を生成
scoreboard players add deadbody setting 1
execute if score deadbody setting matches 2 run scoreboard players set deadbody setting 0

item replace entity @s enderchest.11 with skeleton_skull{display:{Name:'{"text":"死体設定","color":"red","italic":false}',Lore:['[{"text":"[","color":"white","italic":false},{"keybind":"key.attack","color":"light_purple","italic":false},{"text":"] または ","color":"white","italic":false}]','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"light_purple","italic":false},{"text":"] で"},{"text":"死体設定","color":"red"},{"text":"ページに移動する"}]']},pagechange:1}

team add red
team modify red color red

scoreboard players reset 死体を生成:オン setting_preview

execute if score deadbody setting matches 1 run scoreboard players set 死体を生成:オン setting_preview -26


team join red 死体を生成:オン