#勝利判定

# 判定用タグ
tag @a[tag=normal_wolf] add wolf
tag @a[tag=faker] add wolf
tag @a[tag=witch] add wolf
tag @a[tag=camouflager] add wolf
tag @a[tag=cleaner] add wolf
tag @a[tag=!normal_wolf,tag=!faker,tag=!witch,tag=!camouflager,tag=!cleaner] remove wolf

# それぞれの役職の人数をカウント
execute store result score wolfcount mwd_settings if entity @a[tag=wolf,team=!ghost]
execute store result score foxcount mwd_settings if entity @a[tag=fox,team=!ghost]
execute store result score villagercount mwd_settings if entity @a[team=!wolf,team=!fox,tag=!alice,team=!ghost,tag=!madman]
execute store result score alicecount mwd_settings if entity @a[tag=alice,team=!ghost]

# 村人勝利時
execute if score wolfcount mwd_settings matches 0 if score foxcount mwd_settings matches 0 if score alicecount mwd_settings matches 0 run function werewolf:system/finish/villager_win

# 人狼勝利時
execute if score villagercount mwd_settings matches 0 if score foxcount mwd_settings matches 0 if score alicecount mwd_settings matches 0 run function werewolf:system/finish/wolf_win

# 妖狐勝利時
execute if score wolfcount mwd_settings matches 0 if score alicecount mwd_settings matches 0 if score foxcount mwd_settings matches 1.. run function werewolf:system/finish/fox_win
execute if score villagercount mwd_settings matches 0 if score alicecount mwd_settings matches 0 if score foxcount mwd_settings matches 1.. run function werewolf:system/finish/fox_win

# アリス勝利時
execute if score wolfcount mwd_settings matches 0 if score villagercount mwd_settings matches 0 if score foxcount mwd_settings matches 0 if score alicecount mwd_settings matches 1.. run function werewolf:system/finish/alice_win