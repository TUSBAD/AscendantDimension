#> skill:act/ninja/syungokusatsu/punch/check

scoreboard players remove @s NinjaTime 1
execute if score @s NinjaTime matches ..-1 run function skill:act/ninja/syungokusatsu/punch/clear
