#> area:ten_seconds
#
# ワールド10秒毎処理
#
# @within function area:one_second
#declare score_holder #TenSeconds Count

# -> 1分処理
## 使用するときにコメントアウトを外してください。
execute if score #TenSeconds Count matches 0 run function area:one_minute
