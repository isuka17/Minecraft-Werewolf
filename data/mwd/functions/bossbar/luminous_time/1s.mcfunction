# スコアを減らす
scoreboard players remove #発光時間 mwd_settings 1

# 1秒後に実行
execute if score #発光時間 mwd_settings matches 1.. run schedule function mwd:bossbar/luminous_time/1s 1s

# スコアに応じて実行
execute if score #発光時間 mwd_settings matches 0 run bossbar remove mwd_luminous_time
execute if score #発光時間 mwd_settings matches 0 as @a at @s run playsound minecraft:entity.illusioner.prepare_blindness master @s ~ ~ ~ 2 1
execute if score #発光時間 mwd_settings matches 0 run effect give @a glowing infinite 0 true