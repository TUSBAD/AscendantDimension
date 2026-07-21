#> area:area/portal/cloudia/tutorial/open
### チュートリアルのワープ開放

data modify storage area: portal_name set value "クラウディア チュートリアル"
data modify storage area: portal.cloudia.tutorial set value true
execute positioned -1886 113 -195 run function area:area/portal/open
