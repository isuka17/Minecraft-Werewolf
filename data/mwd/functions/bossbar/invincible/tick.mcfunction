# スコアボードとボスバーを連携
execute store result bossbar mwd_invincible_time value run scoreboard players get #無敵時間 mwd_settings
bossbar set mwd_invincible_time name [{"text":"無敵時間 残り"},{"score":{"name":"#無敵時間","objective":"mwd_settings"}},{"text":"秒"}]