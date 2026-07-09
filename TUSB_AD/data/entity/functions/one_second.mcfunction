#> entity:one_second
#
# Entity1秒処理
#
# @within function entity:tick
# 10秒処理
execute if score #Seconds Count matches 0 run function entity:ten_seconds

# エンティティ数カウント
function entity:count/