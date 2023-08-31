# 人数をスコアに反映
execute store result score #wolf mwd_settings if entity @a[scores={mwd_roles_wolf=1..2},team=!mwd_spectator]
execute store result score #villager mwd_settings if entity @a[scores={mwd_roles_villager=1..},team=!mwd_spectator]
execute store result score #fox mwd_settings if entity @a[scores={mwd_roles_neutral=1},team=!mwd_spectator]
execute store result score #alice mwd_settings if entity @a[scores={mwd_roles_neutral=4},team=!mwd_spectator]

# 勝利判定
execute if score #wolf mwd_settings matches 0 if score #alice mwd_settings matches 0 if score #villager mwd_settings matches 1.. if score #fox mwd_settings matches 0 run function mwd:finish/villager
execute if score #wolf mwd_settings matches 0 if score #alice mwd_settings matches 0 if score #villager mwd_settings matches 1.. if score #fox mwd_settings matches 1 run function mwd:finish/fox
execute if score #villager mwd_settings matches 0 if score #alice mwd_settings matches 0 if score #wolf mwd_settings matches 1.. if score #fox mwd_settings matches 0 run function mwd:finish/wolf
execute if score #villager mwd_settings matches 0 if score #alice mwd_settings matches 0 if score #wolf mwd_settings matches 1.. if score #fox mwd_settings matches 1 run function mwd:finish/fox
execute if score #villager mwd_settings matches 0 if score #wolf mwd_settings matches 0 if score #fox mwd_settings matches 0 run function mwd:finish/alice
execute if score #villager mwd_settings matches 0 if score #wolf mwd_settings matches 0 if score #fox mwd_settings matches 1 run function mwd:finish/fox