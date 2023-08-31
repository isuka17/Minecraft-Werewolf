# スコアボードとボスバーを連携
execute store result bossbar mwd_thief value run scoreboard players get #thief mwd_settings
bossbar set mwd_thief name [{"text":"怪盗が盗むまでの待機時間 残り"},{"score":{"name":"#thief","objective":"mwd_settings"}},{"text":"秒"}]