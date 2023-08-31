# 役職とスコアに応じて関数を実行
execute as @a[scores={mwd_items_nether_star=1..,mwd_abilities=1..,mwd_roles_actionbar=8}] at @s run function mwd:abilities/seer/message
execute as @a[scores={mwd_items_nether_star=1..,mwd_abilities=1..,mwd_roles_actionbar=9}] at @s run function mwd:abilities/medium/message

# スコアをセット
scoreboard players set @a mwd_items_nether_star 0

# ネザースターのPickupDelayを0に変更
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] run data modify entity @s PickupDelay set value 0