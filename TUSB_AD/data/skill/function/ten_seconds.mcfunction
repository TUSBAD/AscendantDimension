#> skill:ten_seconds
#
# 職業10秒処理
#
# @within function skill:player_one_second

# -> 30秒処理
 execute if score #TenSeconds Count matches 0 run function skill:thirty_seconds
 execute if score #TenSeconds Count matches 3 run function skill:thirty_seconds

# -> 1分処理
 execute if score #TenSeconds Count matches 0 run function skill:one_minute
