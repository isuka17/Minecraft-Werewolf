#能力使用のネザースター
execute if entity @a[nbt={SelectedItem:{id:"minecraft:player_head",tag:{camouflage:1}}}] unless entity @e[tag=camouflage_use] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["camouflage_use"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=1}] unless entity @e[tag=interaction_1] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_1"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=2}] unless entity @e[tag=interaction_2] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_2"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=3}] unless entity @e[tag=interaction_3] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_3"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=4}] unless entity @e[tag=interaction_4] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_4"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=5}] unless entity @e[tag=interaction_5] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_5"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=6}] unless entity @e[tag=interaction_6] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_6"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=7}] unless entity @e[tag=interaction_7] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_7"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=8}] unless entity @e[tag=interaction_8] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_8"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=9}] unless entity @e[tag=interaction_9] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_9"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=10}] unless entity @e[tag=interaction_10] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_10"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=11}] unless entity @e[tag=interaction_11] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_11"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=12}] unless entity @e[tag=interaction_12] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_12"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=13}] unless entity @e[tag=interaction_13] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_13"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=14}] unless entity @e[tag=interaction_14] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_14"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=15}] unless entity @e[tag=interaction_15] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_15"]}
execute if entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=16}] unless entity @e[tag=interaction_16] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["interaction_16"]}

execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=1}] run kill @e[tag=interaction_1]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=2}] run kill @e[tag=interaction_2]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=3}] run kill @e[tag=interaction_3]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=4}] run kill @e[tag=interaction_4]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=5}] run kill @e[tag=interaction_5]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=6}] run kill @e[tag=interaction_6]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=7}] run kill @e[tag=interaction_7]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=8}] run kill @e[tag=interaction_8]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=9}] run kill @e[tag=interaction_9]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=10}] run kill @e[tag=interaction_10]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=11}] run kill @e[tag=interaction_11]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=12}] run kill @e[tag=interaction_12]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=13}] run kill @e[tag=interaction_13]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=14}] run kill @e[tag=interaction_14]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=15}] run kill @e[tag=interaction_15]
execute unless entity @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=16}] run kill @e[tag=interaction_16]
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:player_head",tag:{camouflage:1}}}] run kill @e[tag=camouflage_use]

execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=1}] at @s run tp @e[tag=interaction_1] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=2}] at @s run tp @e[tag=interaction_2] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=3}] at @s run tp @e[tag=interaction_3] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=4}] at @s run tp @e[tag=interaction_4] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=5}] at @s run tp @e[tag=interaction_5] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=6}] at @s run tp @e[tag=interaction_6] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=7}] at @s run tp @e[tag=interaction_7] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=8}] at @s run tp @e[tag=interaction_8] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=9}] at @s run tp @e[tag=interaction_9] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=10}] at @s run tp @e[tag=interaction_10] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=11}] at @s run tp @e[tag=interaction_11] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=12}] at @s run tp @e[tag=interaction_12] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=13}] at @s run tp @e[tag=interaction_13] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=14}] at @s run tp @e[tag=interaction_14] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=15}] at @s run tp @e[tag=interaction_15] ~ ~1.2 ~
execute as @a[predicate=isuka17_mwd:mainhand/nether_star,scores={mwd_number=16}] at @s run tp @e[tag=interaction_16] ~ ~1.2 ~
execute as @a[nbt={SelectedItem:{id:"minecraft:player_head",tag:{camouflage:1}}}] at @s run tp @e[tag=camouflage_use] ~ ~1.2 ~