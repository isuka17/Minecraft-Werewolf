#騎士の数変更
scoreboard players add knight setting 1
execute if score knight setting matches 2 run scoreboard players set knight setting 0

execute if score knight setting matches 0 run tellraw @s [{"text":"騎士の数を","color":"gold"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score knight setting matches 1 run tellraw @s [{"text":"騎士の数を","color":"gold"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score knight setting matches 0 run item replace entity @s enderchest.21 with orange_stained_glass{display:{Name:'{"text":"騎士の人数設定 現在:0人","color":"gold","italic":false}'},pagechange:1,knight:1}
execute if score knight setting matches 1 run item replace entity @s enderchest.21 with orange_stained_glass{display:{Name:'{"text":"騎士の人数設定 現在:1人","color":"gold","italic":false}'},pagechange:1,knight:1}

team add gold
team modify gold color gold

scoreboard players reset 騎士の数:1人 setting_preview

execute if score knight setting matches 1 run scoreboard players set 騎士の数:1人 setting_preview -15

team join gold 騎士の数:1人