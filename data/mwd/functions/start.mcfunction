scoreboard objectives setdisplay sidebar

function mwd:start/countdown/5
schedule function mwd:start/countdown/4 1s replace
schedule function mwd:start/countdown/3 2s replace
schedule function mwd:start/countdown/2 3s replace
schedule function mwd:start/countdown/1 4s replace

schedule function mwd:reset 5s replace
schedule function mwd:start/casting 5.01s replace
schedule function mwd:start/roles 5.02s replace
schedule function mwd:start/abilities 5.03s replace
execute if entity @a[scores={mwd_roles_neutral=3}] run schedule function mwd:start/thief 5.04s replace
execute unless entity @a[scores={mwd_roles_neutral=3}] if score 発光時間 mwd_settings matches 1.. run schedule function mwd:start/luminous_time 5.05s replace
execute unless entity @a[scores={mwd_roles_neutral=3}] if score 無敵時間 mwd_settings matches 1.. run schedule function mwd:start/invincible_time 5.06s replace
execute unless entity @a[scores={mwd_roles_neutral=3}] run schedule function mwd:start/items 5.07s replace