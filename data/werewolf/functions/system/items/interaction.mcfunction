# 特定のアイテムを手に持った状態でinteractionに触れたプレイヤーがfunctionを実行
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{witch_use:1}}},scores={ability_usecount=1..}] at @s run function werewolf:system/ability/witch/create_madman
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{faker_use:1}}},scores={ability_usecount=1..}] at @s run function werewolf:system/ability/fake
execute as @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{camouflage:1}}}] at @s run function werewolf:system/items/camouflage
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{cleaner_use:1}}},scores={ability_usecount=1..}] at @s run function werewolf:system/ability/clean
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{seer_use:1}}},scores={ability_usecount=1..}] at @s run function werewolf:system/ability/seer/message
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{medium_use:1}}},scores={ability_usecount=1..}] at @s run function werewolf:system/ability/medium/message
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{knight_use:1}}},scores={ability_usecount=1..}] at @s run function werewolf:system/ability/knight/message
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{detective_use:1}}},scores={ability_usecount=1..}] at @s run function werewolf:system/ability/detective
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{thief_use:1}}},scores={ability_usecount=1..}] at @s run function werewolf:system/ability/thief/message

# 進捗を剥奪
advancement revoke @s only werewolf:interaction_use