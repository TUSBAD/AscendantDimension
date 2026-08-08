#> job:change/
# 職業変更の処理

function #oh_my_dat:please

# 職業変更
scoreboard players operation @s Job = Change Job

scoreboard players operation $Type Job = @s Job 
scoreboard players operation $Id Job = @s Job

scoreboard players set $Temp Job 100
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.Job.Type int 1 run scoreboard players operation $Type Job /= $Temp Job
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.Job.Id int 1 run scoreboard players operation $Id Job %= $Temp Job

# セーブして職業をロード
function job:change/load.m with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.Job

# score reset
scoreboard players reset $Temp Job
scoreboard players reset $Type Job
scoreboard players reset $Id Job
