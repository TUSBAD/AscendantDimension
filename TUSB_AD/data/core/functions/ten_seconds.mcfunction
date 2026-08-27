#> core:ten_seconds
#
# 10秒処理
#
# @within function core:one_second

# -> 1分処理
execute if score #TenSeconds Count matches 0 run function core:one_minute