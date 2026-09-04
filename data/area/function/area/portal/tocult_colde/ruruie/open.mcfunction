#> area:area/portal/tocult_colde/ruruie/open
### ルルイエのワープ開放

data modify storage area: portal_name set value "ルルイエ"
data modify storage area: portal.tocult_colde.ruruie set value true
execute positioned 1294 96 1598 run function area:area/portal/open
