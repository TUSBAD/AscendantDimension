#> area:area/portal/tocult_colde/castle/open
### トカルト城のワープ開放

data modify storage area: portal_name set value "トカルト城"
data modify storage area: portal.tocult_colde.castle set value true
execute positioned 1278 96 1582 run function area:area/portal/open
