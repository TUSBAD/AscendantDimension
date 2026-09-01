#> area:area/portal/tocult_colde/frontier/open
### 辺境のワープ開放

data modify storage area: portal_name set value "辺境"
data modify storage area: portal.tocult_colde.frontier set value true
execute positioned 1341 215 1558 run function area:area/portal/open
