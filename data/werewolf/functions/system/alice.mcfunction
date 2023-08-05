#アリスの勝利判定
execute if score werewolf setting matches 1 if score foxcount setting matches 0 run function werewolf:system/end/alice_win
execute if score werewolf setting matches 1 if score foxcount setting matches 1.. run function werewolf:system/end/fox_win
advancement revoke @s only werewolf:alice_judge