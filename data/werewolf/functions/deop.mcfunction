#管理権限剥奪
gamerule sendCommandFeedback false
scoreboard objectives remove deop
scoreboard objectives remove deop_num
scoreboard objectives add deop trigger
scoreboard objectives add deop_num dummy
scoreboard players set @a deop_num 0
scoreboard players enable @s deop
execute as @a[sort=random] store result score @s deop_num if entity @a[scores={deop_num=0}]

tellraw @s {"text":"-------------------------"}
execute if entity @a[scores={deop_num=1}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=1}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 1"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=2}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=2}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 2"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=3}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=3}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 3"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=4}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=4}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 4"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=5}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=5}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 5"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=6}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=6}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 6"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=7}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=7}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 7"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=8}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=8}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 8"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=9}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=9}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 9"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=10}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=10}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 10"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=11}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=11}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 11"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=12}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=12}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 12"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=13}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=13}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 13"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=14}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=14}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 14"},"color":"blue","bold":true}]
execute if entity @a[scores={deop_num=15}] run tellraw @s [{"text":" "},{"selector":"@a[scores={deop_num=15}]"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 15"},"color":"blue","bold":true}]
tellraw @s [{"text":" 自分以外全員"},{"text":" → "},{"text":"剥奪する","clickEvent":{"action":"run_command","value":"/trigger deop set 16"},"color":"blue","bold":true}]
tellraw @s {"text":"-------------------------"}