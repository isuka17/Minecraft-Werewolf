scoreboard players operation #無敵時間 mwd_settings = 無敵時間 mwd_settings
bossbar add mwd_invincible_time {"text":"無敵時間"}
bossbar set mwd_invincible_time players @a
bossbar set mwd_invincible_time color blue
execute store result bossbar mwd_invincible_time max run scoreboard players get #無敵時間 mwd_settings
schedule function mwd:bossbar/invincible/1s 1s