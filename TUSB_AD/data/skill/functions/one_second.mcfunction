#> skill:one_second
#
# 職業関係1秒処理
#
# @within function skill:player_tick


# -> 10秒処理
## 使用するときにコメントアウトを外してください。
 execute if score #Seconds Count matches 0 run function skill:ten_seconds

# 連舞 跳躍
    execute if entity @s[scores={Tsuremai=0..}] run function skill:skill/ninja/tsuremai/check
    execute if entity @s[scores={Choyaku=0..}] run function skill:skill/ninja/choyaku/check
    execute if entity @s[scores={SeiyouNabu=0..}] run function skill:skill/ninja/seiyou/check
    execute if entity @s[scores={SyungokuSatsu=0..}] run function skill:skill/ninja/syungokusatsu/punch/check

# 黙想継続
    execute if entity @s[tag=Mokuso] run function skill:skill/ninja/mokuso/check

# 風切
    execute if entity @s[scores={Kazakiri=0..}] run function skill:skill/ninja/kazakiri/check

# レーダーヴィジョン
    execute if entity @s[tag=RadarVision,scores={HP=1..}] run function skill:skill/archer/radar_vision/check
