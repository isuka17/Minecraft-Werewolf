# 常に実行
function isuka17_mwd:death
execute if score #werewolf mwd_settings matches 0 run function isuka17_mwd:setting/ender_chest/tick
execute if score #werewolf mwd_settings matches 1 run function isuka17_mwd:items/tick
execute if score #werewolf mwd_settings matches 1 run function isuka17_mwd:bossbar/tick
execute if score #werewolf mwd_settings matches 1 run function isuka17_mwd:ability/tick
execute if score #werewolf mwd_settings matches 0 run function isuka17_mwd:join_setting
execute if score #werewolf mwd_settings matches 1 run function isuka17_mwd:remove_tags
execute if score #werewolf mwd_settings matches 1 run function isuka17_mwd:deadbody
execute if score #werewolf mwd_settings matches 1 run function isuka17_mwd:actionbar
execute if score #werewolf mwd_settings matches 1 run function isuka17_mwd:finish/judge
execute if score #werewolf mwd_settings matches 1 run function isuka17_mwd:quartz/crafted_quartz
execute if score #werewolf mwd_settings matches 1 run function isuka17_mwd:quartz/selected_items