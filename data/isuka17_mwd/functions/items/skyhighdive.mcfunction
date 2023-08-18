#スカイハイダイブ
item replace entity @a[scores={skyhighdive=1..}] armor.feet with air
execute at @a[scores={skyhighdive=1..}] run tag @a[distance=..3,gamemode=!spectator] add slow_levitation
execute at @a[scores={skyhighdive=1..}] run effect give @a[distance=..3,gamemode=!spectator] levitation 2 1 true
execute at @a[tag=slow_levitation] run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 2 2

item replace entity @a[tag=slow_levitation,nbt={ActiveEffects:[{Id:25,Duration:1,Amplifier:1b}]}] armor.chest with elytra{skyhighdive:1}
execute at @a[tag=slow_levitation,nbt={ActiveEffects:[{Id:25,Duration:1,Amplifier:1b}]}] run playsound entity.generic.explode master @a ~ ~ ~ 2 1.3
execute at @a[tag=slow_levitation,nbt={ActiveEffects:[{Id:25,Duration:1,Amplifier:1b}]}] run particle explosion_emitter ~ ~1 ~ 0 0 0 1 1 force @a
effect give @a[tag=slow_levitation,nbt={ActiveEffects:[{Id:25,Duration:1,Amplifier:1b}]}] levitation 2 30 true
effect give @a[tag=slow_levitation,nbt={ActiveEffects:[{Id:25,Duration:40,Amplifier:30b}]}] slow_falling 5 0 true
tag @a[tag=slow_levitation,nbt={ActiveEffects:[{Id:25,Duration:40,Amplifier:30b}]}] remove slow_levitation

execute at @a[nbt={Inventory:[{id:"minecraft:elytra",tag:{skyhighdive:1}}]}] run particle minecraft:cloud ~ ~1 ~ 0.3 0.3 0.3 0.1 3 force @a
execute as @a[nbt={Inventory:[{id:"minecraft:elytra",tag:{skyhighdive:1}}]}] at @s unless block ~ ~-0.5 ~ air run clear @s elytra{skyhighdive:1}

scoreboard players set @a skyhighdive 0
kill @e[type=item,nbt={Item:{id:"minecraft:elytra",tag:{skyhighdive:1}}}]