### 新しいスキル取得メッセージを表示
# Levelとjobをストレージに取り込む
execute store result storage skill: _.player.level int 1 run scoreboard players get @s Level
execute store result storage skill: _.player.job int 1 run scoreboard players get @s Job
function skill:set_display/learn/ with storage skill: _.player