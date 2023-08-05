#妖狐の数変更
scoreboard players add fox setting 1
execute if score fox setting matches 2 run scoreboard players set fox setting 0

execute if score fox setting matches 0 run tellraw @s [{"text":"妖狐の数を","color":"dark_purple"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score fox setting matches 1 run tellraw @s [{"text":"妖狐の数を","color":"dark_purple"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score fox setting matches 0 run item replace entity @s enderchest.9 with purple_stained_glass{display:{Name:'{"text":"妖狐の人数設定 現在:0人","color":"dark_purple","italic":false}'},pagechange:1,fox:1}
execute if score fox setting matches 1 run item replace entity @s enderchest.9 with purple_stained_glass{display:{Name:'{"text":"妖狐の人数設定 現在:1人","color":"dark_purple","italic":false}'},pagechange:1,fox:1}
team add purple
team modify purple color dark_purple

scoreboard players reset 妖狐の数:1人 setting_preview

execute if score fox setting matches 1 run scoreboard players set 妖狐の数:1人 setting_preview -8

team join purple 妖狐の数:1人