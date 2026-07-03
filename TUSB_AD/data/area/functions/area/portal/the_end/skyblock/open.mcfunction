#> area:area/portal/the_end/skyblock/open
### THE UNUSUAL SKYBLOCKのワープ開放

data modify storage area: portal_name set value "THE UNUSUAL SKYBLOCK"
data modify storage area: portal.the_end.skyblock set value true
execute positioned -1186 69 8 run function area:area/portal/open
