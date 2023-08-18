# 死体を生成す
execute if entity @s[tag=wolf] run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","wolf_deadbody"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:stone",Count:1b},PickupDelay:1000s,Age:5999}],Pose:{Head:[271f,0f,0f]},NoGravity:1b,Marker:1b,Invisible:1}
execute if entity @s[tag=wolf] run loot replace entity @e[type=armor_stand,tag=deadbody,sort=nearest,limit=1,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] armor.head loot werewolf:playerhead

execute if entity @s[tag=!wolf] run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","notwolf_deadbody"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:stone",Count:1b},PickupDelay:1000s,Age:5999}],Pose:{Head:[271f,0f,0f]},NoGravity:1b,Marker:1b,Invisible:1}
execute if entity @s[tag=!wolf] run loot replace entity @e[type=armor_stand,tag=deadbody,sort=nearest,limit=1,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] armor.head loot werewolf:playerhead

# 死体に役職タグを付与
execute if entity @s[tag=normal_wolf] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add wolf_d
execute if entity @s[tag=witch] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add witch_d
execute if entity @s[tag=reaper] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add reaper_d
execute if entity @s[tag=madman] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add madman_d
execute if entity @s[tag=fanatic] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add fanatic_d
execute if entity @s[tag=fox] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add fox_d
execute if entity @s[tag=immoralist] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add immoralist_d
execute if entity @s[tag=thief] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add thief_d
execute if entity @s[tag=alice] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add alice_d
execute if entity @s[tag=seer] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add seer_d
execute if entity @s[tag=medium] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add medium_d
execute if entity @s[tag=knight] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add knight_d
execute if entity @s[tag=sharer] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add sharer_d
execute if entity @s[tag=detective] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add detective_d
execute if entity @s[tag=villager] run tag @e[tag=deadbody,distance=..1,limit=1,sort=nearest] add villager_d