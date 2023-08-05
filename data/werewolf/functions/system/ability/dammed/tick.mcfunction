#常に実行
tp @a[tag=revival] @e[type=armor_stand,tag=dammed_revival_point,limit=1]
execute at @e[tag=revival] run kill @e[tag=dammed_revival_point,distance=..1]