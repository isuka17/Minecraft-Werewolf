item replace entity @s enderchest.7 with air
item replace entity @s enderchest.13 with air
item replace entity @s enderchest.14 with air
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with air
item replace entity @s enderchest.25 with air

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:0b,tag:{pagechange:1,wolf:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:0b,tag:{pagechange:1,wolf:1}}]}] run function werewolf:system/setting/modify/roles/wolf

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:1b,tag:{pagechange:1,wolf:2}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:1b,tag:{pagechange:1,wolf:2}}]}] run function werewolf:system/setting/modify/roles/witch

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:2b,tag:{pagechange:1,wolf:3}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:2b,tag:{pagechange:1,wolf:3}}]}] run function werewolf:system/setting/modify/roles/faker

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:3b,tag:{pagechange:1,wolf:4}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:3b,tag:{pagechange:1,wolf:4}}]}] run function werewolf:system/setting/modify/roles/camouflager

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:4b,tag:{pagechange:1,wolf:5}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:4b,tag:{pagechange:1,wolf:5}}]}] run function werewolf:system/setting/modify/roles/cleaner

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:5b,tag:{pagechange:1,madman:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:5b,tag:{pagechange:1,madman:1}}]}] run function werewolf:system/setting/modify/roles/madman

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:6b,tag:{pagechange:1,fanatic:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:6b,tag:{pagechange:1,fanatic:1}}]}] run function werewolf:system/setting/modify/roles/fanatic

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:9b,tag:{pagechange:1,fox:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:9b,tag:{pagechange:1,fox:1}}]}] run function werewolf:system/setting/modify/roles/fox

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:10b,tag:{pagechange:1,immoralist:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:10b,tag:{pagechange:1,immoralist:1}}]}] run function werewolf:system/setting/modify/roles/immoralist

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:11b,tag:{pagechange:1,thief:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:11b,tag:{pagechange:1,thief:1}}]}] run function werewolf:system/setting/modify/roles/thief

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:12b,tag:{pagechange:1,alice:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:12b,tag:{pagechange:1,alice:1}}]}] run function werewolf:system/setting/modify/roles/alice

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:18b,tag:{pagechange:1,seer:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:18b,tag:{pagechange:1,seer:1}}]}] run function werewolf:system/setting/modify/roles/seer

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:19b,tag:{pagechange:1,medium:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:19b,tag:{pagechange:1,medium:1}}]}] run function werewolf:system/setting/modify/roles/medium

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:20b,tag:{pagechange:1,sharer:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:20b,tag:{pagechange:1,sharer:1}}]}] run function werewolf:system/setting/modify/roles/sharer

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:21b,tag:{pagechange:1,knight:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:21b,tag:{pagechange:1,knight:1}}]}] run function werewolf:system/setting/modify/roles/knight

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:22b,tag:{pagechange:1,detective:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:22b,tag:{pagechange:1,detective:1}}]}] run function werewolf:system/setting/modify/roles/detective

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:23b,tag:{pagechange:1,dammed:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:23b,tag:{pagechange:1,dammed:1}}]}] run function werewolf:system/setting/modify/roles/dammed

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:24b,tag:{pagechange:1,wolf_possession:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:24b,tag:{pagechange:1,wolf_possession:1}}]}] run function werewolf:system/setting/modify/roles/wolf_posession


execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:8b,id:"minecraft:spectral_arrow",tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:8b,id:"minecraft:spectral_arrow",tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/change/page5

execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:barrier",tag:{pagechange:1}}]}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute as @s[scores={page=3}] unless entity @s[nbt={EnderItems:[{Slot:26b,id:"minecraft:barrier",tag:{pagechange:1}}]}] run function werewolf:system/setting/ender_chest/change/page0