#停電
stopsound @a * minecraft:item.goat_horn.sound.0
clear @a[scores={mwd_items_blackout=1..}] minecraft:goat_horn 1
execute if entity @a[scores={mwd_items_blackout=1..}] run effect give @a[scores={mwd_items_blackout=0},tag=join,gamemode=!spectator] minecraft:blindness 10 0 true
execute if entity @a[scores={mwd_items_blackout=1..}] run title @a times 10 70 20
execute if entity @a[scores={mwd_items_blackout=1..}] run title @a title "停電発生"
execute if entity @a[scores={mwd_items_blackout=1..}] run title @a subtitle "10秒間視界が奪われる"
execute if entity @a[scores={mwd_items_blackout=1..}] as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1
scoreboard players set @a mwd_items_blackout 0