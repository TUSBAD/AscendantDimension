#> core:game_menu/show_status
#
# ステータス詳細
#
# @within function core:game_menu/triggered

function job:status/operation_start

#レベルとCPを算出
#レベル: _ Level  CP: _ Exp
scoreboard players operation _ Level = @s Level
scoreboard players set _ _ 50
scoreboard players operation _ Level < _ _
scoreboard players operation _ Exp = @s Level
scoreboard players remove _ Exp 50
scoreboard players set _ _ 0
scoreboard players operation _ Exp > _ _

#現在の職業のステータスを表示
execute if score @s Job matches 0 run data modify storage player: Job set value '["",{"text":"","color":"green","font":"icon"},{"translate":"無職","color":"green"}]'
execute if score @s Job matches 1 run data modify storage player: Job set value '["",{"text":"K","color":"green","font":"icon"},{"nbt":"Data.Knight[0]","storage":"job:","color":"green"}]'
execute if score @s Job matches 2 run data modify storage player: Job set value '["",{"text":"N","color":"green","font":"icon"},{"nbt":"Data.Ninja[0]","storage":"job:","color":"green"}]'
execute if score @s Job matches 3 run data modify storage player: Job set value '["",{"text":"H","color":"green","font":"icon"},{"nbt":"Data.Archer[0]","storage":"job:","color":"green"}]'
execute if score @s Job matches 4 run data modify storage player: Job set value '["",{"text":"W","color":"green","font":"icon"},{"nbt":"Data.WhiteMage[0]","storage":"job:","color":"green"}]'
execute if score @s Job matches 5 run data modify storage player: Job set value '["",{"text":"B","color":"green","font":"icon"},{"nbt":"Data.BlackMage[0]","storage":"job:","color":"green"}]'
execute if score @s Job matches 6 run data modify storage player: Job set value '["",{"text":"S","color":"green","font":"icon"},{"nbt":"Data.Summoner[0]","storage":"job:","color":"green"}]'
execute if score @s Job matches 7 run data modify storage player: Job set value '["",{"text":"L","color":"green","font":"icon"},{"nbt":"Data.Lancer[0]","storage":"job:","color":"green"}]'
execute if score @s Job matches 8 run data modify storage player: Job set value '["",{"text":"C","color":"green","font":"icon"},{"nbt":"Data.Creator[0]","storage":"job:","color":"green"}]'

tellraw @s "====================================================="
tellraw @s [{"translate":"Job:%1$s LV:%2$s Exp:%3$s/%4$s   ","with":[{"storage":"player:","nbt":"Job","interpret": true},{"score":{"name":"_","objective":"Level"},"color":"green"},{"score":{"name": "@s","objective": "Exp"},"color": "green"},{"score":{"name": "@s","objective": "RequiredExp"},"color": "green"}]}]

function core:game_menu/reshow