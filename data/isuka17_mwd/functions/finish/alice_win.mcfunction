#アリス勝利時
title @a times 10 70 20
title @a title {"text":"アリス","color":"yellow","bold":true}
title @a subtitle {"text":"の勝利！","bold":true}
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 1 2
tellraw @a [{"text":"アリス","color":"yellow"},{"text":"の勝利です。","color":"white"}]
tellraw @a [{"text":"役職の内訳は以下の通りです。","color":"white"}]
function isuka17_mwd:finish/reset