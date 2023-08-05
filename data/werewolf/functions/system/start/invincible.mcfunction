execute if score 無敵時間 setting matches 1 run effect give @a[tag=join] resistance 10 10 true
execute if score 無敵時間 setting matches 2 run effect give @a[tag=join] resistance 20 10 true
execute if score 無敵時間 setting matches 3 run effect give @a[tag=join] resistance 30 10 true
execute if score 無敵時間 setting matches 1 run scoreboard players set 残り無敵時間2 setting 10
execute if score 無敵時間 setting matches 2 run scoreboard players set 残り無敵時間2 setting 20
execute if score 無敵時間 setting matches 3 run scoreboard players set 残り無敵時間2 setting 30

# ボスバーの作成/設定
execute if score 無敵時間 setting matches 1.. run bossbar add invincible ""
bossbar set invincible players @a[tag=join_request]
bossbar set invincible color yellow
execute if score 無敵時間 setting matches 1 run bossbar set invincible max 10
execute if score 無敵時間 setting matches 2 run bossbar set invincible max 20
execute if score 無敵時間 setting matches 3 run bossbar set invincible max 30