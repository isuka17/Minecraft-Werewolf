#霊媒先を表示
tag @s add spirit_tmp
tellraw @s {"text":"-------------------------"}
execute if entity @a[scores={playernumber=1},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=1}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 1"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=2},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=2}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 2"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=3},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=3}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 3"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=4},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=4}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 4"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=5},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=5}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 5"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=6},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=6}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 6"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=7},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=7}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 7"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=8},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=8}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 8"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=9},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=9}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 9"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=10},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=10}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 10"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=11},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=11}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 11"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=12},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=12}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 12"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=13},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=13}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 13"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=14},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=14}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 14"},"color":"dark_aqua","bold":true}]
execute if entity @a[scores={playernumber=15},tag=!spirit_tmp] run tellraw @s [{"text":"  "},{"selector":"@a[scores={playernumber=15}]"},{"text":" → "},{"text":"霊媒する","clickEvent":{"action":"run_command","value":"/trigger spirit set 15"},"color":"dark_aqua","bold":true}]
tellraw @s {"text":"-------------------------"}
tag @s remove spirit_tmp

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.8