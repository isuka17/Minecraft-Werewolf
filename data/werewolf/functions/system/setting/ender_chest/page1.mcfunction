item replace entity @s enderchest.0 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.1 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.2 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.3 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.4 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.5 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.6 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.7 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.8 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.9 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.11 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.13 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.15 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.17 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.19 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.20 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.21 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.22 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.23 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.24 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.25 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.26 with green_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}

execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:golden_chestplate",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:golden_chestplate",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/change/invincible_time

execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:redstone_ore",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:redstone_ore",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/change/deadbody

execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:quartz",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:quartz",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/change/quartz

execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:knowledge_book",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:knowledge_book",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/change/2

execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:18b,id:"minecraft:barrier",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=1}] unless entity @s[nbt={EnderItems:[{Slot:18b,id:"minecraft:barrier",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/change/0