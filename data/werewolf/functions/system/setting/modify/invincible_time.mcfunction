#無敵時間
scoreboard players add invincible_time setting 1
execute if score invincible_time setting matches 4 run scoreboard players set invincible_time setting 0

execute if score invincible_time setting matches 0 run item replace entity @s enderchest.10 with golden_chestplate{display:{Name:'{"text":"無敵時間 現在:0秒","color":"yellow","italic":false}'},pagechange:1}
execute if score invincible_time setting matches 1 run item replace entity @s enderchest.10 with golden_chestplate{display:{Name:'{"text":"無敵時間 現在:10秒","color":"yellow","italic":false}'},pagechange:1}
execute if score invincible_time setting matches 2 run item replace entity @s enderchest.10 with golden_chestplate{display:{Name:'{"text":"無敵時間 現在:20秒","color":"yellow","italic":false}'},pagechange:1}
execute if score invincible_time setting matches 3 run item replace entity @s enderchest.10 with golden_chestplate{display:{Name:'{"text":"無敵時間 現在:30秒","color":"yellow","italic":false}'},pagechange:1}

team add yellow
team modify yellow color yellow

scoreboard players reset 無敵時間:10秒 setting_preview
scoreboard players reset 無敵時間:20秒 setting_preview
scoreboard players reset 無敵時間:30秒 setting_preview

execute if score invincible_time setting matches 1 run scoreboard players set 無敵時間:10秒 setting_preview -25
execute if score invincible_time setting matches 2 run scoreboard players set 無敵時間:20秒 setting_preview -25
execute if score invincible_time setting matches 3 run scoreboard players set 無敵時間:30秒 setting_preview -25

team join yellow 無敵時間:10秒
team join yellow 無敵時間:20秒
team join yellow 無敵時間:30秒