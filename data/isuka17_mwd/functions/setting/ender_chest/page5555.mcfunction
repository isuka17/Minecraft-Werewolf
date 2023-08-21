item replace entity @s enderchest.0 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.1 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.2 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.3 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.4 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.5 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.6 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.7 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.8 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.9 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.11 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.13 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.14 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.15 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.16 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.17 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.19 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.20 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.21 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.22 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.23 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.24 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.25 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.26 with purple_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}

execute as @s[scores={mwd_settings_page=5}] unless entity @s[nbt={EnderItems:[{Slot:18b,id:"minecraft:barrier",tag:{change_page:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=5}] unless entity @s[nbt={EnderItems:[{Slot:18b,id:"minecraft:barrier",tag:{change_page:1}}]}] run function isuka17_mwd:setting/ender_chest/change_page/page3

execute as @s[scores={mwd_settings_page=5}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:echo_shard",tag:{change_page:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=5}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:echo_shard",tag:{change_page:1}}]}] run function isuka17_mwd:setting/change/role/fox_curse

execute as @s[scores={mwd_settings_page=5}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:fermented_spider_eye",tag:{change_page:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=5}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:fermented_spider_eye",tag:{change_page:1}}]}] run function isuka17_mwd:setting/change/role/wolf_survivor_count