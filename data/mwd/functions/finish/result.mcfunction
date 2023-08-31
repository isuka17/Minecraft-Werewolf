# チームに入れる
team join mwd_survivor @a[team=!mwd_spectator]
team join mwd_deceased @a[team=mwd_spectator]

# スコアをセット
scoreboard players reset @a mwd_roles_wolf_number
scoreboard players reset @a mwd_roles_villager_number
scoreboard players set @a[scores={mwd_roles_wolf=1}] mwd_roles_wolf_number 0
scoreboard players set @a[scores={mwd_roles_villager=6}] mwd_roles_villager_number 0

# スコア割り振り
execute as @a[scores={mwd_roles_wolf=1}] store result score @s mwd_roles_wolf_number if entity @a[scores={mwd_roles_wolf_number=0}]
execute as @a[scores={mwd_roles_villager=6}] store result score @s mwd_roles_villager_number if entity @a[scores={mwd_roles_villager_number=0}]

# 役職を表示
tellraw @a {"text":"役職の内訳は以下の通り。"}
tellraw @a {"text":"＊--------------------＊","color":"aqua"}
execute as @a[scores={mwd_roles_wolf_number=1}] run tellraw @a [{"text":"  人狼","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_wolf_number=2}] run tellraw @a [{"text":"  人狼","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_wolf_number=3}] run tellraw @a [{"text":"  人狼","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_wolf=2}] run tellraw @a [{"text":"  魔女","color":"red"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_wolf=3}] run tellraw @a [{"text":"  狂人","color":"light_purple"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_wolf=4}] run tellraw @a [{"text":"  狂信者","color":"light_purple"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_neutral=1}] run tellraw @a [{"text":"  妖狐","color":"dark_purple"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_neutral=2}] run tellraw @a [{"text":"  背徳者","color":"gray"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_neutral=3}] run tellraw @a [{"text":  "アリス","color":"yellow"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager=1}] run tellraw @a [{"text":"  予言者","color":"yellow"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager=2}] run tellraw @a [{"text":"  霊媒師","color":"dark_aqua"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager=3}] run tellraw @a [{"text":"  共有者","color":"green"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager=4}] run tellraw @a [{"text":"  騎士","color":"gold"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager=5}] run tellraw @a [{"text":"  探偵","color":"#804000"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=1}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=2}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=3}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=4}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=5}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=6}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=7}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=8}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=9}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=10}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=11}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=12}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=13}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=14}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_villager_number=15}] run tellraw @a [{"text":"  村人","color":"#0080ff"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_extra=1}] run tellraw @a [{"text":"  狼憑き","color":"dark_green"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_extra=2}] run tellraw @a [{"text":"  呪われし者","color":"aqua"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_extra=3}] run tellraw @a [{"text":"  怪盗","color":"#ff8000"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
execute as @a[scores={mwd_roles_extra=4}] run tellraw @a [{"text":  "忘却者","color":"gray"},{"text":": ","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"＊--------------------＊","color":"aqua"}