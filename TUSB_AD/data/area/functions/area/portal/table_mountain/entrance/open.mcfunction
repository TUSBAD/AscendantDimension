#> area:area/portal/table_mountain/entrance/open
### テーブルマウンテン入口のワープ開放

data modify storage area: portal_name set value "テーブルマウンテン入口"
data modify storage area: portal.table_mountain.happy_city set value true
execute positioned 30 15 -1849 run function area:area/portal/open
