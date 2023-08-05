#開始直後の無敵時間
scoreboard players add 残り無敵時間1 setting 1
execute if score 残り無敵時間1 setting matches 20.. run scoreboard players remove 残り無敵時間2 setting 1
execute if score 残り無敵時間1 setting matches 20.. run scoreboard players set 残り無敵時間1 setting 0
execute if score 残り無敵時間2 setting matches 0 run bossbar remove invincible

# スコアをボスバーに反映
execute store result bossbar invincible value run scoreboard players get 残り無敵時間2 setting
bossbar set invincible name [{"text":"無敵時間 残り"},{"score":{"name":"残り無敵時間2","objective":"setting"}},{"text":"秒"}]