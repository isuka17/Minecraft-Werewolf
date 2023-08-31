# ゆっくり浮遊(待機時間)
execute at @a[scores={mwd_items_skyhighdive=1..},predicate=mwd:sneaking/true] run tag @a[distance=..5,team=!mwd_spectator] add slow_levitation
execute at @a[scores={mwd_items_skyhighdive=1..},predicate=mwd:sneaking/true] run effect give @a[distance=..5,team=!mwd_spectator] levitation 2 1 true
execute at @a[tag=slow_levitation] run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 2 2

# ハイダイブ
item replace entity @a[tag=slow_levitation,nbt={ActiveEffects:[{Id:25,Duration:1,Amplifier:1b}]}] armor.chest with elytra{skyhighdive:1}
execute at @a[tag=slow_levitation,nbt={ActiveEffects:[{Id:25,Duration:1,Amplifier:1b}]}] run playsound entity.generic.explode master @a ~ ~ ~ 2 1.3
execute at @a[tag=slow_levitation,nbt={ActiveEffects:[{Id:25,Duration:1,Amplifier:1b}]}] run particle explosion_emitter ~ ~1 ~ 0 0 0 1 1 force @a
effect give @a[tag=slow_levitation,nbt={ActiveEffects:[{Id:25,Duration:1,Amplifier:1b}]}] levitation 2 30 true
effect give @a[tag=slow_levitation,nbt={ActiveEffects:[{Id:25,Duration:40,Amplifier:30b}]}] slow_falling 5 0 true
tag @a[tag=slow_levitation,nbt={ActiveEffects:[{Id:25,Duration:40,Amplifier:30b}]}] remove slow_levitation
tag @a[team=mwd_spectator] remove slow_levitation

# エリトラを消去
execute at @a[nbt={Inventory:[{id:"minecraft:elytra",tag:{skyhighdive:1}}]}] run particle minecraft:firework ~ ~ ~ 0.3 0.3 0.3 0.1 5 force @a
execute as @a[nbt={Inventory:[{id:"minecraft:elytra",tag:{skyhighdive:1}}]}] at @s unless block ~ ~-0.5 ~ air run clear @s elytra{skyhighdive:1}

# 金のブーツをkill
kill @e[type=item,nbt={Item:{id:"minecraft:golden_boots"}}]

# スコアをセット
scoreboard players set @a mwd_items_skyhighdive 0