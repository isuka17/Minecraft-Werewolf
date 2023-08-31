# 発動処理
effect give @a[team=!mwd_spectator,scores={mwd_items_blindness_record=0}] blindness 10 0 true
execute as @a[team=!mwd_spectator] at @s run particle large_smoke ~ ~1 ~ 0.5 0.3 0.5 0.1 100 force @s
execute as @a[team=!mwd_spectator] at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 0.8

# レコードをkill
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_11"}}]