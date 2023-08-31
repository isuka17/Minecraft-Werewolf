# スコアを減らす
scoreboard players remove #カモフラージュ mwd_settings 1

# 1秒後に実行
execute if score #カモフラージュ mwd_settings matches 1.. run schedule function mwd:bossbar/camouflage/1s 1s

# スコアに応じて実行
execute if score #カモフラージュ mwd_settings matches 0 run bossbar remove mwd_camouflage
execute if score #カモフラージュ mwd_settings matches 0 run clear @a player_head{camo:1}
execute if score #カモフラージュ mwd_settings matches 0 run clear @a leather_chestplate
execute if score #カモフラージュ mwd_settings matches 0 run clear @a leather_leggings
execute if score #カモフラージュ mwd_settings matches 0 run clear @a leather_boots