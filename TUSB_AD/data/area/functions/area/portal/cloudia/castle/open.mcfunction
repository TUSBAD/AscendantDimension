#> area:area/portal/cloudia/castle/open
### クラウディア城へのワープ開放

data modify storage area: portal_name set value "クラウディア城"
data modify storage area: portal.cloudia.castle set value true
execute positioned -2479 3 -129 run function area:area/portal/open
