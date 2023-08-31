# 常時実行
function mwd:actionbar/tick
function mwd:death/tick
execute if score #werewolf mwd_settings matches 1 run function mwd:abilities/tick
execute if score #werewolf mwd_settings matches 1 run function mwd:items/tick
execute if score #werewolf mwd_settings matches 1 run function mwd:amethyst/tick
execute if score #werewolf mwd_settings matches 1 run function mwd:bossbar/tick
execute if score #werewolf mwd_settings matches 1 run function mwd:finish/judge
execute if score #werewolf mwd_settings matches 0 run function mwd:join
execute if score #werewolf mwd_settings matches 0 run function mwd:settings/ender_chest/tick

# 人数をカウント
execute store result score #人数 mwd_settings if entity @a