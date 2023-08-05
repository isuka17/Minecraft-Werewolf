item replace entity @s enderchest.15 with yellow_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.16 with yellow_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.17 with yellow_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.18 with yellow_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.19 with yellow_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.20 with yellow_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.21 with yellow_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.22 with yellow_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.23 with yellow_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}

execute as @s[scores={page=4}] unless entity @s[nbt={EnderItems:[{Slot:24b,id:"minecraft:barrier",tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=4}] unless entity @s[nbt={EnderItems:[{Slot:24b,id:"minecraft:barrier",tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/change/0

execute as @s[scores={page=4}] unless entity @s[nbt={EnderItems:[{Slot:25b,id:"minecraft:nether_star",tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=4}] unless entity @s[nbt={EnderItems:[{Slot:25b,id:"minecraft:nether_star",tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/item/get

execute as @s[scores={page=4}] unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:structure_void",tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=4}] unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:structure_void",tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/item/save