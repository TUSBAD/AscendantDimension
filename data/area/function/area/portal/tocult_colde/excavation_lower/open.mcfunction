#> area:area/portal/tocult_colde/excavation_lower/open
### 採掘場(下)のワープ開放

data modify storage area: portal_name set value "採掘場(下)"
data modify storage area: portal.tocult_colde.excavation_lower set value true
execute positioned 1354 96 1538 run function area:area/portal/open
