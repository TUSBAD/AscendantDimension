#> entity:tick
#
# エンティティ全般tick処理
#
# @within function core:tick

# -> 1秒処理
execute if score #Ticks Count matches 0 run function entity:one_second

# エンティティ数カウント
function entity:count/