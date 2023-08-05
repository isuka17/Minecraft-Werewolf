# 人狼勝利時
title @a[tag=join_request] times 10 70 20
title @a[tag=join_request] title {"text":"ゲーム終了","color":"gold","bold":true}
title @a[tag=join_request] subtitle {"text":"≪人狼陣営の勝利≫","color":"red","bold":true}
execute as @a[tag=join_request] at @s run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~ ~ 0.3 1
tellraw @a[tag=join_request] [{"text":"\n[Werewolf] ","color":"red"},{"text":"人狼陣営の勝利です。"}]
tellraw @a[tag=join_request] [{"text":"[Werewolf] ","color":"red"},{"text":"役職の内訳は以下の通りです。","color":"white"}]
function werewolf:system/end/reset