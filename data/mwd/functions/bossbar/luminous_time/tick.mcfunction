# スコアボードとボスバーを連携
execute store result bossbar mwd_luminous_time value run scoreboard players get #発光時間 mwd_settings
bossbar set mwd_luminous_time name [{"text":"発光まで 残り"},{"score":{"name":"#発光時間","objective":"mwd_settings"}},{"text":"秒"}]