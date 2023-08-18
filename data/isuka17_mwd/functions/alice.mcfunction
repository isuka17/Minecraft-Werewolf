#アリスの勝利判定
execute if score #werewolf mwd_settings matches 1 if score foxcount mwd_settings matches 0 run function werewolf:system/finish/alice_win
execute if score #werewolf mwd_settings matches 1 if score foxcount mwd_settings matches 1.. run function werewolf:system/finish/fox_win
advancement revoke @s only werewolf:alice_judge