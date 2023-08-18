item replace entity @s enderchest.19 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.20 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.21 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.22 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.23 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.24 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.25 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}

execute as @s[scores={page=7}] unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:barrier",tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=7}] unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:barrier",tag:{pagechange:1}}]}] run function isuka17_mwd:setting/ender_chest/change_page/page0

execute as @s[scores={page=7}] unless entity @s[nbt={EnderItems:[{Slot:9b,id:"minecraft:heart_of_the_sea",tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=7}] unless entity @s[nbt={EnderItems:[{Slot:9b,id:"minecraft:heart_of_the_sea",tag:{pagechange:1}}]}] run function isuka17_mwd:setting/modify/items/get

execute as @s[scores={page=7}] unless entity @s[nbt={EnderItems:[{Slot:18b,id:"minecraft:structure_void",tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=7}] unless entity @s[nbt={EnderItems:[{Slot:18b,id:"minecraft:structure_void",tag:{pagechange:1}}]}] run function isuka17_mwd:setting/modify/items/save