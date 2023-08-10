#タイマー
scoreboard players remove camouflage mwd_settings 1
schedule function werewolf:system/bossbar/camouflage/timer 1s
execute if score camouflage mwd_settings matches 0 as @a[tag=join_request] at @s run playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 1 1
execute if score camouflage mwd_settings matches 0 run clear @a[tag=join] player_head{camo:1}
execute if score camouflage mwd_settings matches 0 run clear @a[tag=join] leather_chestplate
execute if score camouflage mwd_settings matches 0 run clear @a[tag=join] leather_leggings
execute if score camouflage mwd_settings matches 0 run clear @a[tag=join] leather_boots
execute if score camouflage mwd_settings matches 0 run schedule clear werewolf:system/bossbar/camouflage/timer