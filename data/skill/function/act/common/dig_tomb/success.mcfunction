#> skill:act/common/dig_tomb/success
#
# 成功時処理
#
# @within function skill:act/common/dig_tomb/act0

    tag @s add DigTomb
    schedule function skill:act/common/dig_tomb/schedule1 1t
