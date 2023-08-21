item replace entity @s enderchest.1 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.2 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.3 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.4 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.5 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.6 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.7 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.8 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.9 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.11 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.17 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.18 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.19 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.20 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.21 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.22 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.23 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.24 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.25 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}
item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":""}'},change_page:1}

execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:barrier",Count:1b,tag:{change_page:1}}]}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:barrier",Count:1b,tag:{change_page:1}}]}] run function isuka17_mwd:setting/ender_chest/change_page/page1

execute as @s[scores={mwd_settings_page=5}] at @s if score #ランダムスタート mwd_settings matches 0 unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:redstone_block",Count:1b,tag:{change_page:1}}]}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=5}] at @s if score #ランダムスタート mwd_settings matches 0 unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:redstone_block",Count:1b,tag:{change_page:1}}]}] run function isuka17_mwd:setting/modify/random_start

execute as @s[scores={mwd_settings_page=5}] at @s if score #ランダムスタート mwd_settings matches 1.. unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:emerald_block",Count:1b,tag:{change_page:1}}]}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=5}] at @s if score #ランダムスタート mwd_settings matches 1.. unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:emerald_block",Count:1b,tag:{change_page:1}}]}] run function isuka17_mwd:setting/modify/random_start

execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:armor_stand",Count:1b,tag:{change_page:1}}]}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:armor_stand",Count:1b,tag:{change_page:1}}]}] run give @s armor_stand{EntityTag:{NoBasePlate:1b,NoGravity:1b,CustomName:'{"text":"スタート地点","color":"gold"}',CustomNameVisible:1b,Tags:["random_start"]}} 1
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:armor_stand",Count:1b,tag:{change_page:1}}]}] run item replace entity @s enderchest.12 with armor_stand{display:{Name:'{"text":"スタート地点設定用防具立てを取得","color":"green","italic":false}',Lore:['[{"text":"クリックでスタート地点設定用防具立てを取得します。"}]']},change_page:1}

execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:redstone",Count:1b,tag:{change_page:1}}]}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:redstone",Count:1b,tag:{change_page:1}}]}] run kill @e[type=armor_stand,tag=random_start]
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:redstone",Count:1b,tag:{change_page:1}}]}] run item replace entity @s enderchest.13 with redstone{display:{Name:'{"text":"スタート地点を全削除","color":"red","italic":false}',Lore:['[{"text":"クリックで全てのスタート地点を削除します。"}]']},change_page:1}

execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:gunpowder",Count:1b,tag:{change_page:1}}]}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:gunpowder",Count:1b,tag:{change_page:1}}]}] as @e[type=armor_stand,tag=random_start] run data modify entity @s Invisible set value 0
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:gunpowder",Count:1b,tag:{change_page:1}}]}] as @e[type=armor_stand,tag=random_start] run data modify entity @s Marker set value 0
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:gunpowder",Count:1b,tag:{change_page:1}}]}] run item replace entity @s enderchest.14 with gunpowder{display:{Name:'{"text":"スタート地点を可視化","color":"gray","italic":false}',Lore:['[{"text":"クリックでスタート地点を可視化させます。"}]']},change_page:1}

execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:15b,id:"minecraft:glowstone_dust",Count:1b,tag:{change_page:1}}]}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:15b,id:"minecraft:glowstone_dust",Count:1b,tag:{change_page:1}}]}] run effect give @e[type=armor_stand,tag=random_start] glowing infinite 0 true
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:15b,id:"minecraft:glowstone_dust",Count:1b,tag:{change_page:1}}]}] run item replace entity @s enderchest.15 with glowstone_dust{display:{Name:'{"text":"スタート地点を発光","color":"yellow","italic":false}',Lore:['[{"text":"クリックでスタート地点を発光させます。"}]']},change_page:1}

execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:sugar",Count:1b,tag:{change_page:1}}]}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:sugar",Count:1b,tag:{change_page:1}}]}] as @e[type=armor_stand,tag=random_start] run data modify entity @s Invisible set value 1
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:sugar",Count:1b,tag:{change_page:1}}]}] as @e[type=armor_stand,tag=random_start] run data modify entity @s Marker set value 1
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:sugar",Count:1b,tag:{change_page:1}}]}] run effect clear @e[type=armor_stand,tag=random_start] glowing
execute as @s[scores={mwd_settings_page=5}] at @s unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:sugar",Count:1b,tag:{change_page:1}}]}] run item replace entity @s enderchest.16 with sugar{display:{Name:'{"text":"スタート地点を透明化","color":"white","italic":false}',Lore:['[{"text":"クリックでスタート地点を透明化させます。"}]']},change_page:1}