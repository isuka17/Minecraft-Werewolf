#好きなアイテムを選択
scoreboard players enable @s item_select
tellraw @s {"text":"-------------------------"}
tellraw @s [{"text":"  一撃必殺の斧 → "},{"text":"選択","clickEvent":{"action":"run_command","value":"/trigger item_select set 1"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":"  一撃必殺のポーション → "},{"text":"選択","clickEvent":{"action":"run_command","value":"/trigger item_select set 2"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":"  風船 → "},{"text":"選択","clickEvent":{"action":"run_command","value":"/trigger item_select set 3"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":"  透明化ポーション → "},{"text":"選択","clickEvent":{"action":"run_command","value":"/trigger item_select set 4"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":"  エナジードリンク → "},{"text":"選択","clickEvent":{"action":"run_command","value":"/trigger item_select set 5"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":"  発光の瓶 → "},{"text":"選択","clickEvent":{"action":"run_command","value":"/trigger item_select set 6"},"bold":true,"color":"aqua"}]
tellraw @s {"text":"-------------------------"}