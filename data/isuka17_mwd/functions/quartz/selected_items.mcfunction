tellraw @s [{"text":"-------------------------","color":"white"}]
tellraw @s [{"text":" 一撃必殺の斧 → ","color":"white"},{"text":"選択","clickEvent":{"action":"run_command","value":"/trigger mwd_selected_items set 1"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":" 一撃必殺のポーション → ","color":"white"},{"text":"選択","clickEvent":{"action":"run_command","value":"/trigger mwd_selected_items set 2"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":" 風船 → ","color":"white"},{"text":"選択","clickEvent":{"action":"run_command","value":"/trigger mwd_selected_items set 3"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":" 透明化ポーション → ","color":"white"},{"text":"選択","clickEvent":{"action":"run_command","value":"/trigger mwd_selected_items set 4"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":" エナジードリンク → ","color":"white"},{"text":"選択","clickEvent":{"action":"run_command","value":"/trigger mwd_selected_items set 5"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":" 発光の瓶 → ","color":"white"},{"text":"選択","clickEvent":{"action":"run_command","value":"/trigger mwd_selected_items set 6"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":"-------------------------","color":"white"}]
scoreboard players enable @s mwd_selected_items