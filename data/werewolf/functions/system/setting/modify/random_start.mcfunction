#ランダムスタート
scoreboard players add random_start setting 1
execute if score random_start setting matches 2 run scoreboard players set random_start setting 0

execute if score random_start setting matches 0 run item replace entity @s enderchest.10 with compass{display:{Name:'{"text":"ランダムスタート 現在:オフ","color":"gold","italic":false}'},pagechange:1}
execute if score random_start setting matches 1 run item replace entity @s enderchest.10 with compass{display:{Name:'{"text":"ランダムスタート 現在:オン","color":"gold","italic":false}'},pagechange:1}

team add gold
team modify gold color gold

scoreboard players reset ランダムスタート:オン setting_preview

execute if score random_start setting matches 1 run scoreboard players set ランダムスタート:オン setting_preview -28


team join gold ランダムスタート:オン
