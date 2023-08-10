# 常に実行
function werewolf:system/death
execute if score werewolf mwd_settings matches 1 run function werewolf:system/items/tick
execute if score werewolf mwd_settings matches 1 run function werewolf:system/bossbar/tick
execute if score werewolf mwd_settings matches 0 run function werewolf:system/join_setting
execute if score werewolf mwd_settings matches 1 run function werewolf:system/remove_tags
execute if score werewolf mwd_settings matches 0 run function werewolf:system/setting/ender_chest/page_change
execute if score werewolf mwd_settings matches 1 run function werewolf:system/deadbody
execute if score werewolf mwd_settings matches 1 run function werewolf:system/actionbar
execute if score werewolf mwd_settings matches 1 run function werewolf:system/finish/judge
execute if score werewolf mwd_settings matches 1 run function werewolf:system/ability/tick
execute if score werewolf mwd_settings matches 1 run function werewolf:system/quartz/common