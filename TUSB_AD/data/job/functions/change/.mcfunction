#> job:change/
#
# 職業変更の処理
#
# @within function 

# 個人ストレージ呼び出し
function #oh_my_dat:please

# データをセーブ
execute store result storage job: _.save_job.id int 1 run scoreboard players get @s JobLevel
function job:change/save.m with storage job: _.save_job

# 職業変更
execute store result storage job: _.load_job.id int 1 run scoreboard players operation @s Job = Change Job

# 職業をロード
function job:change/load.m with storage job: _.load_job

# reset
data remove storage job: _
scoreboard players reset Cheange Job
