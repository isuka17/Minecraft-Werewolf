#探偵の数変更
scoreboard players add detective setting 1
execute if score detective setting matches 2 run scoreboard players set detective setting 0

execute if score detective setting matches 0 run tellraw @s [{"text":"探偵の数を","color":"#933a00"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score detective setting matches 1 run tellraw @s [{"text":"探偵の数を","color":"#933a00"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score detective setting matches 0 run item replace entity @s enderchest.22 with brown_stained_glass{display:{Name:'{"text":"探偵の人数設定 現在:0人","color":"#933a00","italic":false}'},pagechange:1,detective:1}
execute if score detective setting matches 1 run item replace entity @s enderchest.22 with brown_stained_glass{display:{Name:'{"text":"探偵の人数設定 現在:1人","color":"#933a00","italic":false}'},pagechange:1,detective:1}

team add gold
team modify gold color gold

scoreboard players reset 探偵の数:1人 setting_preview

execute if score detective setting matches 1 run scoreboard players set 探偵の数:1人 setting_preview -16

team join gold 探偵の数:1人