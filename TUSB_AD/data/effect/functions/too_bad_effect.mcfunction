#> effects:too_bad_effect
#
# 悪い効果のやつらを付与する
#
# @within function effects:invisible/


execute unless score @s ResistLock matches 1 unless score _ ResistEffects < @s ResistEffects run scoreboard players add @s ResistEffects 5
execute unless score @s ResistLock matches 1 if score _ ResistEffects < @s ResistEffects run function makeup:effect/too_bad_effect
execute if score _ ResistEffects < @s ResistEffects run advancement revoke @s only effect:invisible