item replace entity @a[tag=mwd_op] enderchest.19 with black_stained_glass_pane{display:{Name:'{"text":""}'},mwd_settings:1}
item replace entity @a[tag=mwd_op] enderchest.20 with black_stained_glass_pane{display:{Name:'{"text":""}'},mwd_settings:1}
item replace entity @a[tag=mwd_op] enderchest.21 with black_stained_glass_pane{display:{Name:'{"text":""}'},mwd_settings:1}
item replace entity @a[tag=mwd_op] enderchest.22 with black_stained_glass_pane{display:{Name:'{"text":""}'},mwd_settings:1}
item replace entity @a[tag=mwd_op] enderchest.23 with black_stained_glass_pane{display:{Name:'{"text":""}'},mwd_settings:1}
item replace entity @a[tag=mwd_op] enderchest.24 with black_stained_glass_pane{display:{Name:'{"text":""}'},mwd_settings:1}
item replace entity @a[tag=mwd_op] enderchest.25 with black_stained_glass_pane{display:{Name:'{"text":""}'},mwd_settings:1}
item replace entity @a[tag=mwd_op] enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":""}'},mwd_settings:1}

execute as @a[tag=mwd_op] unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:barrier",tag:{mwd_settings:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @a[tag=mwd_op] unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:barrier",tag:{mwd_settings:1}}]}] run function mwd:settings/ender_chest/reset_items

execute as @a[tag=mwd_op] unless entity @s[nbt={EnderItems:[{Slot:9b,id:"minecraft:heart_of_the_sea",tag:{mwd_settings:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @a[tag=mwd_op] unless entity @s[nbt={EnderItems:[{Slot:9b,id:"minecraft:heart_of_the_sea",tag:{mwd_settings:1}}]}] run function mwd:settings/ender_chest/get_items

execute as @a[tag=mwd_op] unless entity @s[nbt={EnderItems:[{Slot:18b,id:"minecraft:structure_void",tag:{mwd_settings:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @a[tag=mwd_op] unless entity @s[nbt={EnderItems:[{Slot:18b,id:"minecraft:structure_void",tag:{mwd_settings:1}}]}] run function mwd:settings/ender_chest/save_items

clear @a[tag=mwd_op] glass_pane{mwd_settings:1}
clear @a[tag=mwd_op] black_stained_glass_pane{mwd_settings:1}
clear @a[tag=mwd_op] barrier{mwd_settings:1}
clear @a[tag=mwd_op] heart_of_the_sea{mwd_settings:1}
clear @a[tag=mwd_op] structure_void{mwd_settings:1}