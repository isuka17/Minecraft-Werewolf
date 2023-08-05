# 妖狐勝利時の処理
title @a[tag=join_request] title {"text":"ゲーム終了","color":"gold","bold":true}
title @a[tag=join_request] subtitle {"text":"≪妖狐陣営の勝利≫","color":"dark_purple","bold":true}
execute as @a[tag=join_request] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 0.3 2
tellraw @a[tag=join_request] [{"text":"\n[Werewolf] ","color":"red"},{"text":"妖狐陣営の勝利です。","color":"dark_purple"}]
tellraw @a[tag=join_request] [{"text":"[Werewolf] ","color":"red"},{"text":"役職の内訳は以下の通りです。","color":"white"}]
function werewolf:system/end/reset