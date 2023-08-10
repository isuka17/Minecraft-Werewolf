#ブラックホール

# ブラックホールを設置
scoreboard players add @e[type=ender_pearl] mwd_settings 1
scoreboard players add @e[type=armor_stand,tag=blackhole] mwd_items_blackhole 1

execute at @e[type=ender_pearl,scores={setting=10..}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["blackhole"],Invisible:1,Marker:1}
kill @e[type=ender_pearl,scores={setting=10..}]

execute at @e[type=armor_stand,tag=blackhole,scores={mwd_items_blackhole=150..}] run playsound minecraft:item.shield.break master @a ~ ~ ~ 2 1.2
kill @e[type=armor_stand,tag=blackhole,scores={mwd_items_blackhole=150..}]
execute at @e[type=armor_stand,tag=blackhole] as @a[gamemode=!spectator,distance=..7] at @s facing entity @e[type=armor_stand,tag=blackhole,limit=1,sort=nearest] feet run tp ^1 ^0.2 ^0.75
execute at @e[type=armor_stand,tag=blackhole] run effect give @e[distance=..7] minecraft:slow_falling 1 0 true

# 音とパーティクル
execute at @e[type=armor_stand,tag=blackhole] run playsound minecraft:entity.allay.item_thrown master @a ~ ~ ~ 2 1
execute at @e[type=armor_stand,tag=blackhole] run particle minecraft:dust 0 0 0 1 ~ ~1.5 ~ 0.3 0.3 0.3 0 100 force @a
execute at @e[type=armor_stand,tag=blackhole] run particle minecraft:witch ~ ~1.5 ~ 0.7 0.7 0.7 0 10 force @a