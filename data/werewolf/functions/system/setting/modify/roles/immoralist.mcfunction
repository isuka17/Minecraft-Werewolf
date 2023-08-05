#背徳者の数変更
scoreboard players add immoralist setting 1
execute if score immoralist setting matches 2 run scoreboard players set immoralist setting 0

execute if score immoralist setting matches 0 run tellraw @s [{"text":"背徳者の数を","color":"dark_gray"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score immoralist setting matches 1 run tellraw @s [{"text":"背徳者の数を","color":"dark_gray"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score immoralist setting matches 0 run item replace entity @s enderchest.10 with gray_stained_glass{display:{Name:'{"text":"背徳者の人数設定 現在:0人","color":"dark_gray","italic":false}'},pagechange:1,immoralist:1}
execute if score immoralist setting matches 1 run item replace entity @s enderchest.10 with gray_stained_glass{display:{Name:'{"text":"背徳者の人数設定 現在:1人","color":"dark_gray","italic":false}'},pagechange:1,immoralist:1}

team add gray
team modify gray color gray

scoreboard players reset 背徳者の数:1人 setting_preview

execute if score immoralist setting matches 1 run scoreboard players set 背徳者の数:1人 setting_preview -9

team join gray 背徳者の数:1人