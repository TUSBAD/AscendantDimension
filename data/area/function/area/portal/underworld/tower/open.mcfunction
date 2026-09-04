#> area:area/portal/underworld/tower/open
### 地下キノコの塔のワープ開放

data modify storage area: portal_name set value "地下キノコの塔"
data modify storage area: portal.underworld.tower set value true
execute positioned 1045 6 52 run function area:area/portal/open
