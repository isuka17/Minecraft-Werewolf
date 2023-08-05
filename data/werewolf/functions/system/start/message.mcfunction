#役職タグ
tag @a[tag=normal_wolf] add wolf
tag @a[tag=faker] add wolf
tag @a[tag=witch] add wolf
tag @a[tag=!normal_wolf,tag=!faker,tag=!witch] remove wolf

#役職通知
tellraw @s[tag=wolf] [{"text":"仲間の人狼:","color":"red"},{"selector":"@a[tag=wolf,distance=0.1..]"}]
tellraw @s[tag=fanatic] [{"text":"今回の人狼:","color":"red"},{"selector":"@a[tag=wolf]"}]

execute if score 背徳者 setting matches 1.. run tellraw @s[tag=fox] [{"text":"背徳者:","color":"#a042ff"},{"selector":"@a[tag=immoral]"}]
execute if score 妖狐 setting matches 1.. run tellraw @s[tag=immoral] [{"text":"妖狐:","color":"gray"},{"selector":"@a[tag=fox]"}]

tellraw @s[tag=sharers] [{"text":"相方:","color":"green"},{"selector":"@a[tag=sharers,distance=0.1..]"}]