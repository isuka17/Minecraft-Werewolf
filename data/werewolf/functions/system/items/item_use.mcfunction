#能力使用のネザースター
execute if entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{witch_use:1}}}] unless entity @e[type=interaction,tag=witch_use] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["witch_use"]}
execute if entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{faker_use:1}}}] unless entity @e[type=interaction,tag=faker_use] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["faker_use"]}
execute if entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{camouflager_use:1}}}] unless entity @e[type=interaction,tag=camouflager_use] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["camouflager_use"]}
execute if entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{cleaner_use:1}}}] unless entity @e[type=interaction,tag=cleaner_use] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["cleaner_use"]}
execute if entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{seer_use:1}}}] unless entity @e[type=interaction,tag=seer_use] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["seer_use"]}
execute if entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{medium_use:1}}}] unless entity @e[type=interaction,tag=medium_use] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["medium_use"]}
execute if entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{knight_use:1}}}] unless entity @e[type=interaction,tag=knight_use] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["knight_use"]}
execute if entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{detective_use:1}}}] unless entity @e[type=interaction,tag=detective_use] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["detective_use"]}
execute if entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{thief_use:1}}}] unless entity @e[type=interaction,tag=thief_use] run summon interaction ~ ~ ~ {width:1.5f,height:1.5f,Tags:["thief_use"]}

execute unless entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{witch_use:1}}}] run kill @e[tag=witch_use]
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{faker_use:1}}}] run kill @e[tag=faker_use]
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{camouflager_use:1}}}] run kill @e[tag=camouflager_use]
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{cleaner_use:1}}}] run kill @e[tag=cleaner_use]
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{seer_use:1}}}] run kill @e[tag=seer_use]
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{medium_use:1}}}] run kill @e[tag=medium_use]
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{knight_use:1}}}] run kill @e[tag=knight_use]
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{detective_use:1}}}] run kill @e[tag=detective_use]
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{thief_use:1}}}] run kill @e[tag=thief_use]

execute as @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{witch_use:1}}}] at @s run tp @e[tag=witch_use] ~ ~1.2 ~
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{faker_use:1}}}] at @s run tp @e[tag=faker_use] ~ ~1.2 ~
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{camouflager_use:1}}}] at @s run tp @e[tag=camouflager_use] ~ ~1.2 ~
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{cleaner_use:1}}}] at @s run tp @e[tag=cleaner_use] ~ ~1.2 ~
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{seer_use:1}}}] at @s run tp @e[tag=seer_use] ~ ~1.2 ~
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{medium_use:1}}}] at @s run tp @e[tag=medium_use] ~ ~1.2 ~
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{knight_use:1}}}] at @s run tp @e[tag=knight_use] ~ ~1.2 ~
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{detective_use:1}}}] at @s run tp @e[tag=detective_use] ~ ~1.2 ~
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{thief_use:1}}}] at @s run tp @e[tag=thief_use] ~ ~1.2 ~