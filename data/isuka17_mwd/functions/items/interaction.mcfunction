# 特定のアイテムを手に持った状態でinteractionに触れたプレイヤーがfunctionを実行
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{witch_use:1}}},scores={mwd_ability=1..}] at @s run function isuka17_mwd:ability/witch/create_madman
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{faker_use:1}}},scores={mwd_ability=1..}] at @s run function isuka17_mwd:ability/fake
execute as @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{camouflage:1}}}] at @s run function isuka17_mwd:items/camouflage
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{cleaner_use:1}}},scores={mwd_ability=1..}] at @s run function isuka17_mwd:ability/clean
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{seer_use:1}}},scores={mwd_ability=1..}] at @s run function isuka17_mwd:ability/seer/message
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{medium_use:1}}},scores={mwd_ability=1..}] at @s run function isuka17_mwd:ability/medium/message
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{knight_use:1}}},scores={mwd_ability=1..}] at @s run function isuka17_mwd:ability/knight/message
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{detective_use:1}}},scores={mwd_ability=1..}] at @s run function isuka17_mwd:ability/detective
execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{thief_use:1}}},scores={mwd_ability=1..}] at @s run function isuka17_mwd:ability/thief/message

# 進捗を剥奪
advancement revoke @s only isuka17_mwd:interaction_use