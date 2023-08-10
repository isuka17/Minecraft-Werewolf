#狼憑きの出現確率変更
scoreboard players add wolf_possession mwd_settings 1
execute if score wolf_possession mwd_settings matches 4 run scoreboard players set wolf_possession mwd_settings 0

execute if score wolf_possession mwd_settings matches 0 run tellraw @s [{"text":"狼憑きの出現確率を","color":"dark_green"},{"text":"0%","bold":true},{"text":"に設定しました。","bold":false}]
execute if score wolf_possession mwd_settings matches 1 run tellraw @s [{"text":"狼憑きの出現確率を","color":"dark_green"},{"text":"30%","bold":true},{"text":"に設定しました。","bold":false}]
execute if score wolf_possession mwd_settings matches 2 run tellraw @s [{"text":"狼憑きの出現確率を","color":"dark_green"},{"text":"50%","bold":true},{"text":"に設定しました。","bold":false}]
execute if score wolf_possession mwd_settings matches 3 run tellraw @s [{"text":"狼憑きの出現確率を","color":"dark_green"},{"text":"100%","bold":true},{"text":"に設定しました。","bold":false}]

execute if score wolf_possession mwd_settings matches 0 run item replace entity @s enderchest.24 with green_stained_glass{display:{Name:'{"text":"狼憑きの出現確率 現在:0%","color":"dark_green","italic":false}'},pagechange:1,wolf_possession:1}
execute if score wolf_possession mwd_settings matches 1 run item replace entity @s enderchest.24 with green_stained_glass{display:{Name:'{"text":"狼憑きの出現確率 現在:30%","color":"dark_green","italic":false}'},pagechange:1,wolf_possession:1}
execute if score wolf_possession mwd_settings matches 2 run item replace entity @s enderchest.24 with green_stained_glass{display:{Name:'{"text":"狼憑きの出現確率 現在:50%","color":"dark_green","italic":false}'},pagechange:1,wolf_possession:1}
execute if score wolf_possession mwd_settings matches 3 run item replace entity @s enderchest.24 with green_stained_glass{display:{Name:'{"text":"狼憑きの出現確率 現在:100%","color":"dark_green","italic":false}'},pagechange:1,wolf_possession:1}

team add dark_green
team modify dark_green color dark_green

scoreboard players reset 狼憑きの出現確率:30% setting_preview
scoreboard players reset 狼憑きの出現確率:50% setting_preview
scoreboard players reset 狼憑きの出現確率:100% setting_preview

execute if score wolf_possession mwd_settings matches 1 run scoreboard players set 狼憑きの出現確率:30% setting_preview -18
execute if score wolf_possession mwd_settings matches 2 run scoreboard players set 狼憑きの出現確率:50% setting_preview -18
execute if score wolf_possession mwd_settings matches 3 run scoreboard players set 狼憑きの出現確率:100% setting_preview -18
team join dark_green 狼憑きの出現確率:30%
team join dark_green 狼憑きの出現確率:50%
team join dark_green 狼憑きの出現確率:100%