#アリスの数変更
scoreboard players add alice mwd_settings 1
execute if score alice mwd_settings matches 2 run scoreboard players set alice mwd_settings 0

execute if score alice mwd_settings matches 0 run tellraw @s [{"text":"アリスの数を","color":"yellow"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score alice mwd_settings matches 1 run tellraw @s [{"text":"アリスの数を","color":"yellow"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score alice mwd_settings matches 0 run item replace entity @s enderchest.12 with yellow_stained_glass{display:{Name:'{"text":"アリスの人数設定 現在:0人","color":"yellow","italic":false}'},change_page:1,alice:1}
execute if score alice mwd_settings matches 1 run item replace entity @s enderchest.12 with yellow_stained_glass{display:{Name:'{"text":"アリスの人数設定 現在:1人","color":"yellow","italic":false}'},change_page:1,alice:1}

team add yellow
team modify yellow color yellow

scoreboard players reset アリスの数:1人 setting_preview

execute if score alice mwd_settings matches 1 run scoreboard players set アリスの数:1人 setting_preview -11

team join yellow アリスの数:1人