#フェイカーの数変更
scoreboard players add faker mwd_settings 1
execute if score faker mwd_settings matches 2 run scoreboard players set faker mwd_settings 0

execute if score faker mwd_settings matches 0 run tellraw @s [{"text":"フェイカーの数を","color":"red"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score faker mwd_settings matches 1 run tellraw @s [{"text":"フェイカーの数を","color":"red"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score faker mwd_settings matches 0 run item replace entity @s enderchest.2 with red_stained_glass{display:{Name:'{"text":"フェイカーの人数設定 現在:0人","color":"red","italic":false}'},pagechange:1,wolf:3}
execute if score faker mwd_settings matches 1 run item replace entity @s enderchest.2 with red_stained_glass{display:{Name:'{"text":"フェイカーの人数設定 現在:1人","color":"red","italic":false}'},pagechange:1,wolf:3}

team add red
team modify red color red

scoreboard players reset フェイカーの数:1人 setting_preview

execute if score faker mwd_settings matches 1 run scoreboard players set フェイカーの数:1人 setting_preview -3

team join red フェイカーの数:1人