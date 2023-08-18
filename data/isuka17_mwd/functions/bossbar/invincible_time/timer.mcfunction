#タイマー
scoreboard players remove #残り無敵時間 mwd_settings 1
schedule function isuka17_mwd:bossbar/invincible_time/timer 1s
execute if score #残り無敵時間 mwd_settings matches 0 run schedule clear isuka17_mwd:bossbar/invincible_time/timer