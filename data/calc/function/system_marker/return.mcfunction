#> calc:system_marker/return
#
# #marker返却
#
#
#markerを使い終わったら必ず実行すること

execute in area:control run tp @s 5 5 5
#scheduleで実行時(0-0-0-0-0対象)
execute unless entity @s in area:control run tp 0-0-0-0-0 5 5 5
