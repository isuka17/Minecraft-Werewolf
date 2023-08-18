#seerの数変更
scoreboard players add seer mwd_settings 1
execute if score seer mwd_settings matches 2 run scoreboard players set seer mwd_settings 0

execute if score seer mwd_settings matches 0 run tellraw @s [{"text":"予言者の数を","color":"yellow"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score seer mwd_settings matches 1 run tellraw @s [{"text":"予言者の数を","color":"yellow"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score seer mwd_settings matches 0 run item replace entity @s enderchest.18 with yellow_stained_glass{display:{Name:'{"text":"予言者の人数設定 現在:0人","color":"yellow","italic":false}'},pagechange:1,seer:1}
execute if score seer mwd_settings matches 1 run item replace entity @s enderchest.18 with yellow_stained_glass{display:{Name:'{"text":"予言者の人数設定 現在:1人","color":"yellow","italic":false}'},pagechange:1,seer:1}

team add yellow
team modify yellow color yellow

scoreboard players reset 予言者の数:1人 setting_preview

execute if score seer mwd_settings matches 1 run scoreboard players set 予言者の数:1人 setting_preview -12

team join yellow 予言者の数:1人