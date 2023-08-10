#狂信者の数変更
scoreboard players add fanatic mwd_settings 1
execute if score fanatic mwd_settings matches 2 run scoreboard players set fanatic mwd_settings 0

execute if score fanatic mwd_settings matches 0 run tellraw @s [{"text":"狂信者の数を","color":"light_purple"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score fanatic mwd_settings matches 1 run tellraw @s [{"text":"狂信者の数を","color":"light_purple"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score fanatic mwd_settings matches 0 run item replace entity @s enderchest.6 with pink_stained_glass{display:{Name:'{"text":"狂信者の人数設定 現在:0人","color":"light_purple","italic":false}'},pagechange:1,fanatic:1}
execute if score fanatic mwd_settings matches 1 run item replace entity @s enderchest.6 with pink_stained_glass{display:{Name:'{"text":"狂信者の人数設定 現在:1人","color":"light_purple","italic":false}'},pagechange:1,fanatic:1}

team add pink
team modify pink color light_purple

scoreboard players reset 狂信者の数:1人 setting_preview

execute if score fanatic mwd_settings matches 1 run scoreboard players set 狂信者の数:1人 setting_preview -7

team join pink 狂信者の数:1人