#mediumの数変更
scoreboard players add medium setting 1
execute if score medium setting matches 2 run scoreboard players set medium setting 0

execute if score medium setting matches 0 run tellraw @s [{"text":"霊媒師の数を","color":"dark_aqua"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score medium setting matches 1 run tellraw @s [{"text":"霊媒師の数を","color":"dark_aqua"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score medium setting matches 0 run item replace entity @s enderchest.19 with cyan_stained_glass{display:{Name:'{"text":"霊媒師の人数設定 現在:0人","color":"dark_aqua","italic":false}'},pagechange:1,medium:1}
execute if score medium setting matches 1 run item replace entity @s enderchest.19 with cyan_stained_glass{display:{Name:'{"text":"霊媒師の人数設定 現在:1人","color":"dark_aqua","italic":false}'},pagechange:1,medium:1}

team add dark_aqua
team modify dark_aqua color dark_aqua

scoreboard players reset 霊媒師の数:1人 setting_preview

execute if score medium setting matches 1 run scoreboard players set 霊媒師の数:1人 setting_preview -11

team join dark_aqua 霊媒師の数:1人