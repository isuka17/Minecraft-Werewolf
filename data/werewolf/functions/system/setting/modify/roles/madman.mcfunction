#狂人の数変更
scoreboard players add madman setting 1
execute if score madman setting matches 2 run scoreboard players set madman setting 0

execute if score madman setting matches 0 run tellraw @s [{"text":"狂人の数を","color":"light_purple"},{"text":"0人","bold":true},{"text":"に設定しました。","bold":false}]
execute if score madman setting matches 1 run tellraw @s [{"text":"狂人の数を","color":"light_purple"},{"text":"1人","bold":true},{"text":"に設定しました。","bold":false}]

execute if score madman setting matches 0 run item replace entity @s enderchest.5 with pink_stained_glass{display:{Name:'{"text":"狂人の人数設定 現在:0人","color":"light_purple","italic":false}'},pagechange:1,madman:1}
execute if score madman setting matches 1 run item replace entity @s enderchest.5 with pink_stained_glass{display:{Name:'{"text":"狂人の人数設定 現在:1人","color":"light_purple","italic":false}'},pagechange:1,madman:1}

team add pink
team modify pink color light_purple

scoreboard players reset 狂人の数:1人 setting_preview

execute if score madman setting matches 1 run scoreboard players set 狂人の数:1人 setting_preview -13

team join pink 狂人の数:1人