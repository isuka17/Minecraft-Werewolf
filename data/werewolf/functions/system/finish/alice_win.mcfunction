#アリス勝利時
title @a[tag=join_request] title {"text":"ゲーム終了","color":"gold","bold":true}
title @a[tag=join_request] subtitle {"text":"≪アリスの勝利≫","color":"yellow","bold":true}
execute as @a[tag=join_request] at @s run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 1 2
tellraw @a[tag=join_request] [{"text":"\n[Werewolf] ","color":"red"},{"text":"アリスの勝利です。","color":"yellow"}]
tellraw @a[tag=join_request] [{"text":"[Werewolf] ","color":"red"},{"text":"役職の内訳は以下の通りです。","color":"white"}]
function werewolf:system/finish/reset