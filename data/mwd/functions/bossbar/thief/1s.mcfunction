# スコアを減らす
scoreboard players remove #thief mwd_settings 1

# 1秒後に実行
execute if score #thief mwd_settings matches 1.. run schedule function mwd:bossbar/thief/1s 1s

# スコアに応じて関数を実行
execute if score #thief mwd_settings matches 0 run function mwd:bossbar/thief/finish