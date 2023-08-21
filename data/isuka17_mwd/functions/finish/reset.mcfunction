# リセット
execute if score #preview setting_preview matches 1 run scoreboard objectives setdisplay sidebar setting_preview
scoreboard players set #werewolf mwd_settings 0
scoreboard players set camouflage mwd_settings 0
schedule clear isuka17_mwd:bossbar/camouflage/timer
schedule clear isuka17_mwd:bossbar/invincible_time/timer
kill @e[tag=blackhole]
kill @e[type=item]
kill @e[tag=dammed_revive_point]
clear @a[tag=join_request]
effect clear @a[tag=join_request]
bossbar remove thief
bossbar remove invincible_time
bossbar remove camouflage

# スコアをセット






# リザルト
tellraw @a [{"text":"-----------------------------------","color":"green"}]
execute if entity @a[tag=wolf] run tellraw @a [{"text":"<人狼>\n","color":"red"},{"selector":"@a[tag=normal_wolf]","color":"red"}]
execute if entity @a[tag=madman] run tellraw @a [{"text":"\n<狂人>\n","color":"light_purple"},{"selector":"@a[tag=madman]","color":"light_purple"}]
execute if entity @a[tag=fanatic] run tellraw @a [{"text":"\n<狂信者>\n","color":"light_purple"},{"selector":"@a[tag=fanatic]","color":"light_purple"}]
execute if entity @a[tag=fox] run tellraw @a [{"text":"\n<妖狐>\n","color":"dark_purple"},{"selector":"@a[tag=fox]","color":"dark_purple"}]
execute if entity @a[tag=immoral] run tellraw @a [{"text":"\n<背徳者>\n","color":"dark_gray"},{"selector":"@a[tag=immoral]","color":"dark_gray"}]
execute if entity @a[tag=alice] run tellraw @a [{"text":"\n<アリス>\n","color":"yellow"},{"selector":"@a[tag=alice]","color":"yellow"}]
execute if entity @a[tag=thief] run tellraw @a [{"text":"\n<怪盗>\n","color":"#ff5800"},{"selector":"@a[tag=thief]","color":"#ff5800"}]
execute if entity @a[tag=seer] run tellraw @a [{"text":"\n<予言者>\n","color":"yellow"},{"selector":"@a[tag=seer]","color":"yellow"}]
execute if entity @a[tag=medium] run tellraw @a [{"text":"\n<霊媒師>\n","color":"dark_aqua"},{"selector":"@a[tag=medium]","color":"dark_aqua"}]
execute if entity @a[tag=sharer] run tellraw @a [{"text":"\n<共有者>\n","color":"green"},{"selector":"@a[tag=sharer]","color":"green"}]
execute if entity @a[tag=knight] run tellraw @a [{"text":"\n<騎士>\n","color":"gold"},{"selector":"@a[tag=knight]","color":"gold"}]
execute if entity @a[tag=detective] run tellraw @a [{"text":"\n<探偵>\n","color":"#a65300"},{"selector":"@a[tag=detective]","color":"#a65300"}]
execute if entity @a[tag=villager] run tellraw @a [{"text":"\n<村人>\n","color":"#0080ff"},{"selector":"@a[tag=villager]","color":"#0080ff"}]
execute if entity @a[tag=dammed] run tellraw @a [{"text":"\n<呪われし者>\n","color":"aqua"},{"selector":"@a[tag=dammed]","color":"aqua"}]
execute if entity @a[tag=wolf_possession] run tellraw @a [{"text":"\n<狼憑き>","color":"dark_green"},{"selector":"@a[tag=wolf_possession]","color":"dark_green"}]
tellraw @a {"text":"-----------------------------------","color":"green"}

team join join_request @a[tag=join_request]
team join not_join @a[tag=!join_request]
gamemode creative @a[tag=join_request]