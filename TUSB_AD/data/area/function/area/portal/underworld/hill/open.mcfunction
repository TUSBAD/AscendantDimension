#> area:area/portal/underworld/hill/open
### 地下キノコの山のワープ開放

data modify storage area: portal_name set value "地下キノコの山"
data modify storage area: portal.underworld.hill set value true
execute positioned 888 16 -215 run function area:area/portal/open
