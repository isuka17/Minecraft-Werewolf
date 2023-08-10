#常に実行
tp @a[tag=revive] @e[type=armor_stand,tag=dammed_revive_point,limit=1]
execute at @e[tag=revive] run kill @e[tag=dammed_revive_point,distance=..1]