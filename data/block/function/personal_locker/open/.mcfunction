#> block:personal_locker/open/
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^0.3 run function block:personal_locker/open/seek
advancement revoke @s only block:interact/ender_chest
