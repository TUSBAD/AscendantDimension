#> skill:act/ninja/syungokusatsu/carrot/spell
###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function skill:mp/check/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 2270..2279 run function skill:act/ninja/syungokusatsu/carrot/cast
