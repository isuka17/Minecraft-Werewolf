#発光の瓶

# 特定スコア(発光の瓶の効果時間)に応じて発光させる
execute if entity @a[scores={mwd_items_luminous_bottle=1..}] run effect give @a[scores={mwd_items_luminous_bottle=0}] glowing 30 0 true

# 発光の瓶が使用されたことを通知する
execute if entity @a[scores={mwd_items_luminous_bottle=1..}] as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 2 1.8

# 後処理(スコアリセット&エンチャント瓶をkill)
scoreboard players set @a mwd_items_luminous_bottle 0
kill @e[type=experience_bottle]