#死体を生成
scoreboard players add deadbody setting 1
execute if score deadbody setting matches 2 run scoreboard players set deadbody setting 0

execute if score deadbody setting matches 0 run item replace entity @s enderchest.12 with redstone_ore{display:{Name:'{"text":"死体を生成 現在:オフ","color":"red","italic":false}'},pagechange:1}
execute if score deadbody setting matches 1.. run item replace entity @s enderchest.12 with redstone_ore{display:{Name:'{"text":"死体を生成 現在:オン","color":"red","italic":false}'},pagechange:1}

team add red
team modify red color red

scoreboard players reset 死体を生成:オン setting_preview

execute if score deadbody setting matches 1 run scoreboard players set 死体を生成:オン setting_preview -26


team join red 死体を生成:オン