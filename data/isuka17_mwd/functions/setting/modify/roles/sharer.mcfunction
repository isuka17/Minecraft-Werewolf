#sharerの数変更
scoreboard players add sharer mwd_settings 1
execute if score sharer mwd_settings matches 2 run scoreboard players set sharer mwd_settings 0

execute if score sharer mwd_settings matches 0 run tellraw @s [{"text":"共有者の数を","color":"green"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score sharer mwd_settings matches 1 run tellraw @s [{"text":"共有者の数を","color":"green"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score sharer mwd_settings matches 0 run item replace entity @s enderchest.20 with lime_stained_glass{display:{Name:'{"text":"共有者の人数設定 現在:0人","color":"green","italic":false}'},change_page:1,sharer:1}
execute if score sharer mwd_settings matches 1 run item replace entity @s enderchest.20 with lime_stained_glass{display:{Name:'{"text":"共有者の人数設定 現在:1人","color":"green","italic":false}'},change_page:1,sharer:1}

team add green
team modify green color green

scoreboard players reset 共有者の数:1人 setting_preview

execute if score sharer mwd_settings matches 1 run scoreboard players set 共有者の数:1人 setting_preview -14

team join green 共有者の数:1人