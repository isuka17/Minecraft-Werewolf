# スコアを減らす
scoreboard players remove #無敵時間 mwd_settings 1

# 1秒後に実行
execute if score #無敵時間 mwd_settings matches 1.. run schedule function mwd:bossbar/invincible/1s 1s

# スコアに応じて実行
execute if score #無敵時間 mwd_settings matches 0 run bossbar remove mwd_invincible_time
execute if score #無敵時間 mwd_settings matches 1.. run effect give @a resistance 1 5 true