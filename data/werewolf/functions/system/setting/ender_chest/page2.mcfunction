item replace entity @s enderchest.0 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.1 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.2 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.3 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.4 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.5 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.6 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.7 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.8 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.9 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.11 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.13 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.15 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.17 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.19 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.20 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.21 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.22 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.23 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.24 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.25 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}
item replace entity @s enderchest.26 with orange_stained_glass_pane{display:{Name:'{"text":""}'},pagechange:1}

execute as @s[scores={page=2}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:compass",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=2}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:compass",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/change/random_start

execute as @s[scores={page=2}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:armor_stand",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=2}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:armor_stand",Count:1b,tag:{pagechange:1}}]}] run give @s armor_stand{EntityTag:{Tags:["random_start"]},display:{Name:'{"text":"ランダムスタート地点","italic":false,"color":"gold"}'}}
execute as @s[scores={page=2}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:armor_stand",Count:1b,tag:{pagechange:1}}]}] run item replace entity @s enderchest.12 with armor_stand{display:{Name:'{"text":"ランダムスタート地点登録用防具立てを取得","color":"yellow","italic":false}'},pagechange:1}

execute as @s[scores={page=2}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:redstone",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=2}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:redstone",Count:1b,tag:{pagechange:1}}]}] run kill @e[tag=random_start]
execute as @s[scores={page=2}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:redstone",Count:1b,tag:{pagechange:1}}]}] run tellraw @s {"text":"ランダムスタート地点をリセットしました。","color":"red"}
execute as @s[scores={page=2}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:redstone",Count:1b,tag:{pagechange:1}}]}] run item replace entity @s enderchest.14 with redstone{display:{Name:'{"text":"ランダムスタート地点をリセット","color":"red","italic":false}'},pagechange:1}

execute as @s[scores={page=2}] unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:ender_eye",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=2}] unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:ender_eye",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/change/armorstand_invisible

execute as @s[scores={page=2}] unless entity @s[nbt={EnderItems:[{Slot:18b,id:"minecraft:barrier",Count:1b,tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=2}] unless entity @s[nbt={EnderItems:[{Slot:18b,id:"minecraft:barrier",Count:1b,tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/change/1