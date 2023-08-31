# 当たった時の処理
execute at @e[predicate=mwd:items/stanball] run effect give @a[distance=..3.5,team=!mwd_spectator] blindness 5 0 true
execute at @e[predicate=mwd:items/stanball] run effect give @a[distance=..3.5,team=!mwd_spectator] slowness 5 1 true
execute at @e[predicate=mwd:items/stanball] if entity @a[distance=..3.5,team=!mwd_spectator] run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a
execute at @e[predicate=mwd:items/stanball] if entity @a[distance=..3.5,team=!mwd_spectator] run particle end_rod ~ ~1 ~ 0 0 0 0.5 50 force @a
execute at @e[predicate=mwd:items/stanball] if entity @a[distance=..3.5,team=!mwd_spectator] run playsound entity.elder_guardian.curse master @a ~ ~ ~ 2 2
execute as @e[predicate=mwd:items/stanball] at @s if entity @a[distance=..3.5,team=!mwd_spectator] run kill @s

# スコアを足し続ける
scoreboard players add @e[type=snowball] mwd_settings 1