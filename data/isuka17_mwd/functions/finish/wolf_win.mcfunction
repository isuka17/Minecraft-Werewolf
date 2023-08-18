# 人狼勝利時
title @a times 10 70 20
title @a title {"text":"人狼陣営","color":"red","bold":true}
title @a subtitle {"text":"の勝利！","bold":true}
execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~ ~ 0.3 1
tellraw @a [{"text":"人狼陣営","color":"red"},{"text":"の勝利です。","color":"white"}]
tellraw @a [{"text":"役職の内訳は以下の通りです。","color":"white"}]
function isuka17_mwd:finish/reset