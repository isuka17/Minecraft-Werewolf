# タイトルを表示
title @a times 10 70 20
title @a title {"text":"人狼陣営","color":"red","bold":true}
title @a subtitle {"text":"の勝利！","color":"white","bold":true}

# 勝利を通知
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.5 1
tellraw @a {"text":"\nゲームが終了しました。","color":"gold"}
tellraw @a [{"text":"勝利したのは"},{"text":"人狼陣営","color":"red"},{"text":"です。","color":"white"}]

# 関数を実行
function mwd:finish/result
schedule function mwd:reset 0.03s

# 設定を表示
scoreboard objectives setdisplay sidebar mwd_settings

# スコアを設定
scoreboard players set #werewolf mwd_settings 0