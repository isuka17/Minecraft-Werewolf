#魔女の数変更
scoreboard players add witch mwd_settings 1
execute if score witch mwd_settings matches 2 run scoreboard players set witch mwd_settings 0

execute if score witch mwd_settings matches 0 run tellraw @s [{"text":"魔女の数を","color":"red"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score witch mwd_settings matches 1 run tellraw @s [{"text":"魔女の数を","color":"red"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score witch mwd_settings matches 0 run item replace entity @s enderchest.1 with red_stained_glass{display:{Name:'{"text":"魔女の人数設定 現在:0人","color":"red","italic":false}'},change_page:1,wolf:2}
execute if score witch mwd_settings matches 1 run item replace entity @s enderchest.1 with red_stained_glass{display:{Name:'{"text":"魔女の人数設定 現在:1人","color":"red","italic":false}'},change_page:1,wolf:2}

team add red
team modify red color red

scoreboard players reset 魔女の数:1人 setting_preview

execute if score witch mwd_settings matches 1 run scoreboard players set 魔女の数:1人 setting_preview -2

team join red 魔女の数:1人