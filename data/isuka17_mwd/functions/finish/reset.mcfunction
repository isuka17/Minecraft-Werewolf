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
execute if entity @a[tag=normal_wolf] run tellraw @a [{"text":"・"},{"text":"人狼\n   ","color":"red","bold":true},{"selector":"@a[tag=normal_wolf]","bold":false,"color":"red"}]
execute if entity @a[tag=witch] run tellraw @a [{"text":"・"},{"text":"魔女\n   ","color":"red","bold":true},{"selector":"@a[tag=witch]","bold":false,"color":"red"}]
execute if entity @a[tag=reaper] run tellraw @a [{"text":"・"},{"text":"死神\n   ","color":"red","bold":true},{"selector":"@a[tag=faker]","bold":false,"color":"red"}]
execute if entity @a[tag=madman] run tellraw @a [{"text":"・"},{"text":"狂人\n   ","color":"light_purple","bold":true},{"selector":"@a[tag=madman]","bold":false,"color":"light_purple"}]
execute if entity @a[tag=fanatic] run tellraw @a [{"text":"・"},{"text":"狂信者\n   ","color":"light_purple","bold":true},{"selector":"@a[tag=fanatic]","bold":false,"color":"light_purple"}]
execute if entity @a[tag=fox] run tellraw @a [{"text":"・"},{"text":"妖狐\n   ","color":"dark_purple","bold":true},{"selector":"@a[tag=fox]","bold":false,"color":"dark_purple"}]
execute if entity @a[tag=immoral] run tellraw @a [{"text":"・"},{"text":"背徳者\n   ","color":"dark_gray","bold":true},{"selector":"@a[tag=immoral]","bold":false,"color":"dark_gray"}]
execute if entity @a[tag=alice] run tellraw @a [{"text":"・"},{"text":"アリス\n   ","color":"yellow","bold":true},{"selector":"@a[tag=alice]","bold":false,"color":"yellow"}]
execute if entity @a[tag=thief] run tellraw @a [{"text":"・"},{"text":"怪盗\n   ","color":"#ff5800","bold":true},{"selector":"@a[tag=thief]","bold":false,"color":"#ff5800"}]
execute if entity @a[tag=seer] run tellraw @a [{"text":"・"},{"text":"予言者\n   ","color":"yellow","bold":true},{"selector":"@a[tag=seer]","bold":false,"color":"yellow"}]
execute if entity @a[tag=medium] run tellraw @a [{"text":"・"},{"text":"霊媒師\n   ","color":"dark_aqua","bold":true},{"selector":"@a[tag=medium]","bold":false,"color":"dark_aqua"}]
execute if entity @a[tag=sharer] run tellraw @a [{"text":"・"},{"text":"共有者\n   ","color":"green","bold":true},{"selector":"@a[tag=sharer]","bold":false,"color":"green"}]
execute if entity @a[tag=knight] run tellraw @a [{"text":"・"},{"text":"騎士\n   ","color":"gold","bold":true},{"selector":"@a[tag=knight]","bold":false,"color":"gold"}]
execute if entity @a[tag=detective] run tellraw @a [{"text":"・"},{"text":"探偵\n   ","color":"#a65300","bold":true},{"selector":"@a[tag=detective]","bold":false,"color":"#a65300"}]
execute if entity @a[tag=villager] run tellraw @a [{"text":"・"},{"text":"村人\n   ","color":"#0080ff","bold":true},{"selector":"@a[tag=villager]","bold":false,"color":"#0080ff"}]
execute if entity @a[tag=dammed] run tellraw @a [{"text":"・"},{"text":"呪われし者\n   ","color":"aqua","bold":true},{"selector":"@a[tag=dammed]","bold":false,"color":"aqua"}]
execute if entity @a[tag=wolf_possession] run tellraw @a [{"text":"・"},{"text":"狼憑き\n   ","color":"dark_green","bold":true},{"selector":"@a[tag=wolf_possession]","bold":false,"color":"dark_green"}]
tellraw @a {"text":"-----------------------------------","color":"green"}

team join join_request @a[tag=join_request]
team join not_join @a[tag=!join_request]
gamemode creative @a[tag=join_request]