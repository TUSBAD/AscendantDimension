#> skill:act/summoner/final_catastrophe/spell

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function job:mp/check/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 6330..6339 run function skill:act/summoner/final_catastrophe/cast
