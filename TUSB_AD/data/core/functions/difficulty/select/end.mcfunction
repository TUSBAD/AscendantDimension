#> core:difficulty/select/end
#
#
#
# @within function core:difficulty/select/

# 選択用エンティティの片付け
execute in area:trade positioned -7.45 87.45 -132.00 run kill @e[tag=DifficultSelect,distance=..20]
#execute in area:trade run forceload remove -1750 -135
