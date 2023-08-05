#クリーナーの数変更
scoreboard players add cleaner setting 1
execute if score cleaner setting matches 2 run scoreboard players set cleaner setting 0

execute if score cleaner setting matches 0 run tellraw @s [{"text":"クリーナーの数を","color":"red"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score cleaner setting matches 1 run tellraw @s [{"text":"クリーナーの数を","color":"red"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score cleaner setting matches 0 run item replace entity @s enderchest.4 with red_stained_glass{display:{Name:'{"text":"クリーナーの人数設定 現在:0人","color":"red","italic":false}'},pagechange:1,wolf:5}
execute if score cleaner setting matches 1 run item replace entity @s enderchest.4 with red_stained_glass{display:{Name:'{"text":"クリーナーの人数設定 現在:1人","color":"red","italic":false}'},pagechange:1,wolf:5}

team add red
team modify red color red

scoreboard players reset クリーナーの数:1人 setting_preview

execute if score cleaner setting matches 1 run scoreboard players set クリーナーの数:1人 setting_preview -5

team join red クリーナーの数:1人