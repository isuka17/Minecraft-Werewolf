#seerの数変更
scoreboard players add seer setting 1
execute if score seer setting matches 2 run scoreboard players set seer setting 0

execute if score seer setting matches 0 run tellraw @s [{"text":"預言者の数を","color":"yellow"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score seer setting matches 1 run tellraw @s [{"text":"預言者の数を","color":"yellow"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score seer setting matches 0 run item replace entity @s enderchest.18 with yellow_stained_glass{display:{Name:'{"text":"預言者の人数設定 現在:0人","color":"yellow","italic":false}'},pagechange:1,seer:1}
execute if score seer setting matches 1 run item replace entity @s enderchest.18 with yellow_stained_glass{display:{Name:'{"text":"預言者の人数設定 現在:1人","color":"yellow","italic":false}'},pagechange:1,seer:1}

team add yellow
team modify yellow color yellow

scoreboard players reset 預言者の数:1人 setting_preview

execute if score seer setting matches 1 run scoreboard players set 預言者の数:1人 setting_preview -12

team join yellow 預言者の数:1人