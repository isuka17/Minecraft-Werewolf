item replace entity @s enderchest.1 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.2 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.3 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.4 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.5 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.6 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.7 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.8 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.9 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.14 with air
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
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

execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:barrier",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:barrier",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/change/page0

execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:iron_horse_armor",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:iron_horse_armor",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/change/page2

execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:11b,id:"minecraft:skeleton_skull",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:11b,id:"minecraft:skeleton_skull",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/modify/deadbody

execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:quartz",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:quartz",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/modify/quartz

execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:emerald",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:emerald",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/change/page2