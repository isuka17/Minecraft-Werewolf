# 常に実行
function werewolf:system/death_setting
execute if score werewolf setting matches 1 run function werewolf:system/items/tick
execute if score werewolf setting matches 1 run function werewolf:system/bossbar/tick
execute if score werewolf setting matches 0 run function werewolf:system/deop_tick
execute if score werewolf setting matches 0 run function werewolf:system/join_setting
execute if score werewolf setting matches 1 run function werewolf:system/remove_tag
execute if score werewolf setting matches 0 run function werewolf:system/setting/ender_chest/page_change
execute if score werewolf setting matches 1 run function werewolf:system/deadbody
execute if score werewolf setting matches 1 run function werewolf:system/role_actionbar
execute if score werewolf setting matches 1 run function werewolf:system/end/judge
execute if score werewolf setting matches 1 run function werewolf:system/ability/tick
execute if score werewolf setting matches 1 run function werewolf:system/bossbar/invincible
execute if score werewolf setting matches 1 run function werewolf:system/bossbar/thief
execute if score werewolf setting matches 1 run function werewolf:system/quartz/common