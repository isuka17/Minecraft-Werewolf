#呪われし者の数変更
scoreboard players add dammed mwd_settings 1
execute if score dammed mwd_settings matches 2 run scoreboard players set dammed mwd_settings 0

execute if score dammed mwd_settings matches 0 run tellraw @s [{"text":"呪われし者の数を","color":"aqua"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score dammed mwd_settings matches 1 run tellraw @s [{"text":"呪われし者の数を","color":"aqua"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score dammed mwd_settings matches 0 run item replace entity @s enderchest.23 with blue_stained_glass{display:{Name:'{"text":"呪われし者の人数設定 現在:0人","color":"aqua","italic":false}'},change_page:1,dammed:1}
execute if score dammed mwd_settings matches 1 run item replace entity @s enderchest.23 with blue_stained_glass{display:{Name:'{"text":"呪われし者の人数設定 現在:1人","color":"aqua","italic":false}'},change_page:1,dammed:1}

team add aqua
team modify aqua color aqua

scoreboard players reset 呪われし者の数:1人 setting_preview

execute if score dammed mwd_settings matches 1 run scoreboard players set 呪われし者の数:1人 setting_preview -17

team join aqua 呪われし者の数:1人