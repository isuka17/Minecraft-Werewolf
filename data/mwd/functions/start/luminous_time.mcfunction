scoreboard players operation #発光時間 mwd_settings = 発光時間 mwd_settings
bossbar add mwd_luminous_time {"text":"発光まで 残り秒"}
bossbar set mwd_luminous_time players @a
bossbar set mwd_luminous_time color yellow
execute store result bossbar mwd_luminous_time max run scoreboard players get #発光時間 mwd_settings
schedule function mwd:bossbar/luminous_time/1s 1s