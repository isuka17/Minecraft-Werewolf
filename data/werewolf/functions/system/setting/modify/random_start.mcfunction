#ランダムスタート
scoreboard players add ランダムスタート setting 1
execute if score ランダムスタート setting matches 2 run scoreboard players set ランダムスタート setting 0

execute if score ランダムスタート setting matches 0 run tellraw @s [{"text":"ランダムスタートを","color":"gold"},{"text":"オフ","bold":true},{"text":"に設定しました。","bold":false}]
execute if score ランダムスタート setting matches 1 run tellraw @s [{"text":"ランダムスタートを","color":"gold"},{"text":"オン","bold":true},{"text":"に設定しました。","bold":false}]

execute if score ランダムスタート setting matches 0 run item replace entity @s enderchest.10 with compass{display:{Name:'{"text":"ランダムスタート 現在:オフ","color":"gold","italic":false}'},pagechange:1}
execute if score ランダムスタート setting matches 1 run item replace entity @s enderchest.10 with compass{display:{Name:'{"text":"ランダムスタート 現在:オン","color":"gold","italic":false}'},pagechange:1}

team add gold
team modify gold color gold

scoreboard players reset ランダムスタート:オン setting_preview

execute if score ランダムスタート setting matches 1 run scoreboard players set ランダムスタート:オン setting_preview -28


team join gold ランダムスタート:オン
