#> area:area/portal/the_end/garden/open
### エンド 植物庭園のワープ開放

data modify storage area: portal_name set value "エンド 植物庭園"
data modify storage area: portal.the_end.garden set value true
execute positioned 107 49 -1 run function area:area/portal/open
