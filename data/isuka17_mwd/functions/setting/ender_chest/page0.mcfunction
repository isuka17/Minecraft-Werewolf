item replace entity @s enderchest.0 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.1 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.2 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.3 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.4 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.5 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.6 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.7 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.8 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.9 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.18 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.19 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.20 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.21 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.22 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.23 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.24 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.25 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}


execute as @s[scores={mwd_settings_page=0}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:knowledge_book",Count:1b,tag:{change_page:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=0}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:knowledge_book",Count:1b,tag:{change_page:1}}]}] run function isuka17_mwd:setting/ender_chest/change_page/page1

execute as @s[scores={mwd_settings_page=0}] unless entity @s[nbt={EnderItems:[{Slot:11b,id:"minecraft:golden_horse_armor",Count:1b,tag:{change_page:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=0}] unless entity @s[nbt={EnderItems:[{Slot:11b,id:"minecraft:golden_horse_armor",Count:1b,tag:{change_page:1}}]}] run function isuka17_mwd:setting/ender_chest/change_page/page6

execute as @s[scores={mwd_settings_page=0}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:potion",Count:1b,tag:{change_page:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=0}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:potion",Count:1b,tag:{change_page:1}}]}] run function isuka17_mwd:setting/ender_chest/change_page/page7

execute as @s[scores={mwd_settings_page=0}] unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:bow",Count:1b,tag:{change_page:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=0}] unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:bow",Count:1b,tag:{change_page:1}}]}] run function isuka17_mwd:setting/ender_chest/change_page/page4

execute as @s[scores={mwd_settings_page=0}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:clock",Count:1b,tag:{change_page:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=0}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:clock",Count:1b,tag:{change_page:1}}]}] run function isuka17_mwd:setting/ender_chest/change_page/page5

execute as @s[scores={mwd_settings_page=0}] unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:ender_eye",Count:1b,tag:{change_page:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=0}] unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:ender_eye",Count:1b,tag:{change_page:1}}]}] run function isuka17_mwd:setting/preview