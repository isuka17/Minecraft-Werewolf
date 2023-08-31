# 防具立てを召喚
execute if score @s mwd_roles_wolf matches 1 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_wolf"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}
execute if score @s mwd_roles_wolf matches 2 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_witch"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}
execute if score @s mwd_roles_wolf matches 3 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_madman"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}
execute if score @s mwd_roles_wolf matches 4 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_fanatic"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}
execute if score @s mwd_roles_neutral matches 1 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_fox"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}
execute if score @s mwd_roles_neutral matches 2 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_immoralist"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}
execute if score @s mwd_roles_neutral matches 4 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_alice"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}
execute if score @s mwd_roles_neutral matches 5 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_forgotten"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}
execute if score @s mwd_roles_villager matches 1 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_seer"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}
execute if score @s mwd_roles_villager matches 2 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_medium"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}
execute if score @s mwd_roles_villager matches 3 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_sharer"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}
execute if score @s mwd_roles_villager matches 4 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_knight"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}
execute if score @s mwd_roles_villager matches 5 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_detective"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}
execute if score @s mwd_roles_villager matches 6 run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","d_villager"],Marker:1,Invisible:1,Pose:{Head:[88f,0f,0f]}}

# 頭を付ける
loot replace entity @e[tag=deadbody,sort=nearest,limit=1] armor.head loot mwd:player_head