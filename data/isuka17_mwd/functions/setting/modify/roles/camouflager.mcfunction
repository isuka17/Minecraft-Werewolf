#カモフラージャーの数変更
scoreboard players add camouflager mwd_settings 1
execute if score camouflager mwd_settings matches 2 run scoreboard players set camouflager mwd_settings 0

execute if score camouflager mwd_settings matches 0 run tellraw @s [{"text":"カモフラージャーの数を","color":"red"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score camouflager mwd_settings matches 1 run tellraw @s [{"text":"カモフラージャーの数を","color":"red"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score camouflager mwd_settings matches 0 run item replace entity @s enderchest.3 with red_stained_glass{display:{Name:'{"text":"カモフラージャーの人数設定 現在:0人","color":"red","italic":false}'},change_page:1,wolf:4}
execute if score camouflager mwd_settings matches 1 run item replace entity @s enderchest.3 with red_stained_glass{display:{Name:'{"text":"カモフラージャーの人数設定 現在:1人","color":"red","italic":false}'},change_page:1,wolf:4}

team add red
team modify red color red

scoreboard players reset カモフラージャーの数:1人 setting_preview

execute if score camouflager mwd_settings matches 1 run scoreboard players set カモフラージャーの数:1人 setting_preview -4

team join red カモフラージャーの数:1人