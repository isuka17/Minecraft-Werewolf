#怪盗の数変更
scoreboard players add thief setting 1
execute if score thief setting matches 2 run scoreboard players set thief setting 0

execute if score thief setting matches 0 run tellraw @s [{"text":"怪盗の数を","color":"#ff5800"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score thief setting matches 1 run tellraw @s [{"text":"怪盗の数を","color":"#ff5800"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score thief setting matches 0 run item replace entity @s enderchest.11 with orange_stained_glass{display:{Name:'{"text":"怪盗の人数設定 現在:0人","color":"#ff5800","italic":false}'},pagechange:1,thief:1}
execute if score thief setting matches 1 run item replace entity @s enderchest.11 with orange_stained_glass{display:{Name:'{"text":"怪盗の人数設定 現在:1人","color":"#ff5800","italic":false}'},pagechange:1,thief:1}
team add gold
team modify gold color gold

scoreboard players reset 怪盗の数:1人 setting_preview

execute if score thief setting matches 1 run scoreboard players set 怪盗の数:1人 setting_preview -10

team join gold 怪盗の数:1人