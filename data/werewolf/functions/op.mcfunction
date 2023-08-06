#ゲーム管理権限
execute as @s run function werewolf:system/setting/ender_chest/change/0
tag @s add op
tellraw @s {"text":"ゲーム管理権限を取得しました。","color":"aqua"}
execute as @s at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.6