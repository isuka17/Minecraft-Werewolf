# ボスバー
execute store result bossbar invincible_time value run scoreboard players get #残り無敵時間 setting
bossbar set invincible_time name [{"text":"無敵時間 残り"},{"score":{"name":"#残り無敵時間","objective":"setting"}},{"text":"秒"}]
execute if score #残り無敵時間 mwd_settings matches 0 run bossbar remove invincible_time
execute if score #残り無敵時間 mwd_settings matches 1.. run effect give @a[tag=join] resistance 1 5 true