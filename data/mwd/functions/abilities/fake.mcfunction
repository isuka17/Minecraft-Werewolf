# 偽の死体
execute at @s[nbt={SelectedItem:{tag:{faker_use:1}}}] run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:stone",Count:1b},PickupDelay:1000s,Age:5999}],Pose:{Head:[271f,0f,0f]},NoGravity:1b,Marker:1b,Invisible:1}
execute at @s[nbt={SelectedItem:{tag:{faker_use:1}}}] as @r run loot replace entity @e[type=armor_stand,sort=nearest,limit=1,tag=deadbody,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] armor.head loot isuka17_mwd:playerhead
execute at @s[nbt={SelectedItem:{tag:{faker_use:1}}}] run tp @e[type=armor_stand,sort=nearest,limit=1,tag=deadbody,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] ~ ~-1.2 ~ ~ 90
execute as @s at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
scoreboard players remove @s mwd_ability 1