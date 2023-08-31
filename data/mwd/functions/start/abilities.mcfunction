# 能力使用回数を設定
scoreboard players set @a mwd_abilities 0
scoreboard players set @a[scores={mwd_roles_wolf=2}] mwd_abilities 1
scoreboard players set @a[scores={mwd_roles_villager=1}] mwd_abilities 1
scoreboard players set @a[scores={mwd_roles_villager=2}] mwd_abilities 1
scoreboard players set @a[scores={mwd_roles_villager=4}] mwd_abilities 1
scoreboard players set @a[scores={mwd_roles_villager=5}] mwd_abilities 1
scoreboard players set @a[scores={mwd_roles_extra=3}] mwd_abilities 1
scoreboard players set @a[scores={mwd_roles_extra=4}] mwd_abilities 1

# トリガー許可
scoreboard players enable @a[scores={mwd_roles_wolf=2}] mwd_abilities_create_madman
scoreboard players enable @a[scores={mwd_roles_villager=1}] mwd_abilities_penetrate
scoreboard players enable @a[scores={mwd_roles_villager=2}] mwd_abilities_spirit
scoreboard players enable @a[scores={mwd_roles_villager=3}] mwd_abilities_guard
scoreboard players enable @a[scores={mwd_roles_neutral=3}] mwd_abilities_thief