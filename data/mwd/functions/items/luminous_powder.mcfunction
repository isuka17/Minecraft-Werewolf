# 発動処理
execute if entity @a[scores={mwd_items_luminous_powder=1..}] run effect give @a[team=!mwd_spectator,scores={mwd_items_luminous_powder=0}] glowing 20 0 true
execute if entity @a[scores={mwd_items_luminous_powder=1..}] as @a[team=!mwd_spectator] at @s run particle flame ~ ~1 ~ 0.5 0.3 0.5 0.1 100 force @s
execute if entity @a[scores={mwd_items_luminous_powder=1..}] as @a[team=!mwd_spectator] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 0

# ブレイズパウダーをkill
kill @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}}]