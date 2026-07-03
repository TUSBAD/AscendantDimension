#> area:area/portal/tocult_colde/drift_ice/open
### 流氷のワープ開放

data modify storage area: portal_name set value "流氷"
data modify storage area: portal.tocult_colde.drift_ice set value true
execute positioned 1354 96 1582 run function area:area/portal/open
