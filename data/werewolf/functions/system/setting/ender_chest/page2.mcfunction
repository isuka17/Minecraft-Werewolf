item replace entity @s enderchest.1 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.2 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.3 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.4 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.5 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.6 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.7 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.8 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.9 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.10 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.11 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.15 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.16 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.17 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.18 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.19 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.20 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.21 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.22 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.23 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.24 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.25 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}

execute as @s[scores={page=2}] at @s unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:barrier",Count:1b,tag:{pagechange:1}}]}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=2}] at @s unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:barrier",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/change/page1

execute as @s[scores={page=2}] at @s unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:gold_ingot",Count:1b,tag:{pagechange:1}}]}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=2}] at @s unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:gold_ingot",Count:1b,tag:{pagechange:1}}]}] run scoreboard players add #invincible_time mwd_settings 10
execute as @s[scores={page=2}] at @s unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:gold_ingot",Count:1b,tag:{pagechange:1}}]}] run loot replace entity @s enderchest.14 loot werewolf:invincible_time/minus_10
execute as @s[scores={page=2}] at @s unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:gold_ingot",Count:1b,tag:{pagechange:1}}]}] run loot replace entity @s enderchest.12 loot werewolf:invincible_time/plus_10

execute as @s[scores={page=2}] at @s if score invincible_time mwd_settings matches 0 unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:redstone_block",Count:1b,tag:{pagechange:1}}]}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=2}] at @s if score invincible_time mwd_settings matches 0 unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:redstone_block",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/modify/invincible_time

execute as @s[scores={page=2}] at @s if score invincible_time mwd_settings matches 1.. unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:emerald_block",Count:1b,tag:{pagechange:1}}]}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=2}] at @s if score invincible_time mwd_settings matches 1.. unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:emerald_block",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/modify/invincible_time

execute as @s[scores={page=2}] at @s unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:iron_ingot",Count:1b,tag:{pagechange:1}}]}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=2}] at @s unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:iron_ingot",Count:1b,tag:{pagechange:1}}]}] run scoreboard players remove #invincible_time mwd_settings 10
execute as @s[scores={page=2}] at @s unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:iron_ingot",Count:1b,tag:{pagechange:1}}]}] run loot replace entity @s enderchest.12 loot werewolf:invincible_time/plus_10
execute as @s[scores={page=2}] at @s unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:iron_ingot",Count:1b,tag:{pagechange:1}}]}] run loot replace entity @s enderchest.14 loot werewolf:invincible_time/minus_10