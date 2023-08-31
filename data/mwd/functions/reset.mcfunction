# チームに追加
team join mwd_join @a[tag=mwd_hope_participate]
team join mwd_spec @a[tag=!mwd_hope_participate]

# ゲームモード変更
gamemode creative @a

# スコアボード
scoreboard players set @a mwd_roles_wolf 0
scoreboard players set @a mwd_roles_neutral 0
scoreboard players set @a mwd_roles_villager 0
scoreboard players set @a mwd_roles_extra 0
scoreboard players set @a mwd_roles_actionbar 0
scoreboard players set #カモフラージュ mwd_settings 0

# トリガー消費
execute as @a run trigger mwd_abilities_create_madman set 0
execute as @a run trigger mwd_abilities_penetrate set 0
execute as @a run trigger mwd_abilities_spirit set 0
execute as @a run trigger mwd_abilities_guard set 0
execute as @a run trigger mwd_abilities_thief set 0

# ゲームルール
gamerule sendCommandFeedback false
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule keepInventory false
gamerule doImmediateRespawn false
gamerule showDeathMessages false

# エフェクト
effect give @a saturation 1 255 true
effect give @a instant_health 1 255 true

# キル
kill @e[tag=blackhole]
kill @e[tag=deadbody]
kill @e[type=item]
kill @e[type=potion]
kill @e[type=area_effect_cloud]
kill @e[tag=dammed_revival_point]

# クリアー
clear @a
effect clear @a
schedule clear mwd:bossbar/luminous_time/1s
schedule clear mwd:bossbar/invincible/1s
schedule clear mwd:bossbar/thief/1s
schedule clear mwd:bossbar/camouflage/1s

# ボスバーを削除
bossbar remove mwd_luminous_time
bossbar remove mwd_invincible_time
bossbar remove mwd_thief
bossbar remove mwd_camouflage