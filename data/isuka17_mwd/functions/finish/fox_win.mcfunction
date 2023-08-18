# 妖狐勝利時の処理
title @a times 10 70 20
title @a title {"text":"妖狐陣営","color":"dark_purple","bold":true}
title @a subtitle {"text":"の勝利！","bold":true}
execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 0.3 2
tellraw @a [{"text":"妖狐陣営","color":"dark_purple"},{"text":"の勝利です。","color":"white"}]
tellraw @a [{"text":"役職の内訳は以下の通りです。","color":"white"}]
function isuka17_mwd:finish/reset