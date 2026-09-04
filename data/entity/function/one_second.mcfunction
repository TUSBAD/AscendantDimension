#> entity:one_second
#
# Entity1秒処理
#
# @within function entity:tick
# 10秒処理
    execute if score #Seconds Count matches 0 run function entity:ten_seconds

### 停止飛翔物削除
    execute as @e[tag=TickingRequired] at @s run function entity:check_freeze
    execute as @e[tag=InKasap] at @s run function entity:check_kasap

# エンティティ数カウント
    function entity:count/
