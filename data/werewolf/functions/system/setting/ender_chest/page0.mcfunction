item replace entity @s enderchest.0 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.1 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.2 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.3 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.4 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.5 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.6 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.7 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.8 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.9 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.11 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.13 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.15 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.16 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.17 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.18 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.19 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.20 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.21 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.22 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.23 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.24 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.25 with cyan_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}


execute as @s[scores={page=0}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:end_crystal",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=0}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:end_crystal",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/change/1

execute as @s[scores={page=0}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_horse_armor",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=0}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_horse_armor",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/change/3

execute as @s[scores={page=0}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:totem_of_undying",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=0}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:totem_of_undying",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/change/4

execute as @s[scores={page=0}] unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:heart_of_the_sea",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=0}] unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:heart_of_the_sea",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/preview