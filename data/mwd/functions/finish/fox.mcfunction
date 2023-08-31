# タイトルを表示
title @a times 10 70 20
title @a title {"text":"妖狐陣営","color":"dark_purple","bold":true}
title @a subtitle {"text":"の勝利！","color":"white","bold":true}

# 勝利を通知
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 2
tellraw @a {"text":"\nゲームが終了しました。","color":"gold"}
tellraw @a [{"text":"勝利したのは"},{"text":"妖狐陣営","color":"dark_purple"},{"text":"です。","color":"white"}]

# 関数を実行
function mwd:finish/result
schedule function mwd:reset 0.03s

# 設定を表示
scoreboard objectives setdisplay sidebar mwd_settings

# スコアを設定
scoreboard players set #werewolf mwd_settings 0