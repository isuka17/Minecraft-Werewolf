#占い先を表示
tag @s add guard_tmp
tellraw @s {"text":"-------------------------"}
execute if entity @a[scores={mwd_number=1},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=1}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 1"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=2},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=2}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 2"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=3},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=3}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 3"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=4},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=4}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 4"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=5},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=5}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 5"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=6},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=6}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 6"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=7},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=7}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 7"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=8},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=8}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 8"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=9},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=9}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 9"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=10},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=10}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 10"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=11},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=11}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 11"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=12},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=12}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 12"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=13},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=13}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 13"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=14},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=14}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 14"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=15},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=15}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 15"},"color":"gold","bold":true}]
execute if entity @a[scores={mwd_number=16},tag=!guard_tmp] run tellraw @s [{"text":" "},{"selector":"@a[scores={mwd_number=16}]"},{"text":" → "},{"text":"護る","clickEvent":{"action":"run_command","value":"/trigger guard set 16"},"color":"gold","bold":true}]
tellraw @s {"text":"-------------------------"}
tag @s remove guard_tmp

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.8