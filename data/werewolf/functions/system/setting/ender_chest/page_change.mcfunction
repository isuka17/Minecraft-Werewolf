#ページ変更
execute as @a[tag=op,scores={page=0}] run function werewolf:system/setting/ender_chest/page0
execute as @a[tag=op,scores={page=1}] run function werewolf:system/setting/ender_chest/page1
execute as @a[tag=op,scores={page=2}] run function werewolf:system/setting/ender_chest/page2
execute as @a[tag=op,scores={page=3}] run function werewolf:system/setting/ender_chest/page3
execute as @a[tag=op,scores={page=4}] run function werewolf:system/setting/ender_chest/page4
execute as @a[tag=op,scores={page=5}] run function werewolf:system/setting/ender_chest/page5
clear @a #werewolf:setting_gui{pagechange:1}
kill @e[type=item,nbt={Item:{tag:{pagechange:1}}}]