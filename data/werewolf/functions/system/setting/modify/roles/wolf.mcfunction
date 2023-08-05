#人狼の数変更
scoreboard players add wolf setting 1
execute if score wolf setting matches 4 run scoreboard players set wolf setting 0

execute if score wolf setting matches 0 run tellraw @s [{"text":"人狼の数を","color":"red"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score wolf setting matches 1 run tellraw @s [{"text":"人狼の数を","color":"red"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score wolf setting matches 2 run tellraw @s [{"text":"人狼の数を","color":"red"},{"text":"2人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score wolf setting matches 3 run tellraw @s [{"text":"人狼の数を","color":"red"},{"text":"3人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score wolf setting matches 0 run item replace entity @s enderchest.0 with red_stained_glass{display:{Name:'{"text":"人狼の人数設定 現在:0人","color":"red","italic":false}'},pagechange:1,wolf:1}
execute if score wolf setting matches 1 run item replace entity @s enderchest.0 with red_stained_glass{display:{Name:'{"text":"人狼の人数設定 現在:1人","color":"red","italic":false}'},pagechange:1,wolf:1}
execute if score wolf setting matches 2 run item replace entity @s enderchest.0 with red_stained_glass{display:{Name:'{"text":"人狼の人数設定 現在:2人","color":"red","italic":false}'},pagechange:1,wolf:1}
execute if score wolf setting matches 3 run item replace entity @s enderchest.0 with red_stained_glass{display:{Name:'{"text":"人狼の人数設定 現在:3人","color":"red","italic":false}'},pagechange:1,wolf:1}

team add red
team modify red color red

scoreboard players reset 人狼の数:1人 setting_preview
scoreboard players reset 人狼の数:2人 setting_preview
scoreboard players reset 人狼の数:3人 setting_preview

execute if score wolf setting matches 1 run scoreboard players set 人狼の数:1人 setting_preview -1
execute if score wolf setting matches 2 run scoreboard players set 人狼の数:2人 setting_preview -1
execute if score wolf setting matches 3 run scoreboard players set 人狼の数:3人 setting_preview -1

team join red 人狼の数:1人
team join red 人狼の数:2人
team join red 人狼の数:3人