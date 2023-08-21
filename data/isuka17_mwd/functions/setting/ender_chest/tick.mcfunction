#ページ変更
execute as @a[tag=op,scores={mwd_settings_page=0}] run function isuka17_mwd:setting/ender_chest/page0
execute as @a[tag=op,scores={mwd_settings_page=1}] run function isuka17_mwd:setting/ender_chest/page1
execute as @a[tag=op,scores={mwd_settings_page=2}] run function isuka17_mwd:setting/ender_chest/page2
execute as @a[tag=op,scores={mwd_settings_page=3}] run function isuka17_mwd:setting/ender_chest/page3
execute as @a[tag=op,scores={mwd_settings_page=4}] run function isuka17_mwd:setting/ender_chest/page4
execute as @a[tag=op,scores={mwd_settings_page=5}] run function isuka17_mwd:setting/ender_chest/page5
execute as @a[tag=op,scores={mwd_settings_page=6}] run function isuka17_mwd:setting/ender_chest/page6
execute as @a[tag=op,scores={mwd_settings_page=7}] run function isuka17_mwd:setting/ender_chest/page7
clear @a #isuka17_mwd:setting_gui{change_page:1}
kill @e[type=item,nbt={Item:{tag:{change_page:1}}}]