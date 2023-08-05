#タイマー
scoreboard players remove camouflage setting 1
schedule function werewolf:system/ability/camouflager/timer 1s
execute if score camouflage setting matches 0 as @a[tag=join_request] at @s run playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 1 1
execute if score camouflage setting matches 0 run schedule clear werewolf:system/ability/camouflager/timer