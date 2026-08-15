#> skill:act/white_mage/holy_shower/spell

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function job:mp/check/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 4250..4259 run function skill:act/white_mage/holy_shower/cast
