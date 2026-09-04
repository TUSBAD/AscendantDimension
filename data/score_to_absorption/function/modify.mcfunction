#   Copyright © 2020 赤石愛

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

execute if entity @s[tag=ScoreToAbsorption.AntiGlitch.Protected] run function score_to_absorption:anti_glitch/modify

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
scoreboard players operation @s ScoreToAbsorption < #_ ScoreToAbsorption
attribute @s max_absorption modifier add tusb:scoretoabsorption-17 -838.8607 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-16 -419.4304 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-16 419.4304 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-15 -209.7152 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-15 209.7152 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-14 -104.8576 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-14 104.8576 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-13 -52.4288 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-13 52.4288 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-12 -26.2144 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-12 26.2144 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-11 -13.1072 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-11 13.1072 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-10 -6.5536 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-10 6.5536 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-0f -3.2768 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-0f 3.2768 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-0e -1.6384 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-0e 1.6384 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-0d -0.8192 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-0d 0.8192 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-0c -0.4096 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-0c 0.4096 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-0b -0.2048 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-0b 0.2048 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-0a -0.1024 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-0a 0.1024 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-09 -0.0512 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-09 0.0512 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-08 -0.0256 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-08 0.0256 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-07 -0.0128 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-07 0.0128 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-06 -0.0064 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-06 0.0064 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-05 -0.0032 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-05 0.0032 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-04 -0.0016 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-04 0.0016 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-03 -0.0008 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-03 0.0008 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-02 -0.0004 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-02 0.0004 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-01 -0.0002 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-01 0.0002 add_value

execute store result score #_ ScoreToAbsorption run attribute @s max_absorption get 100
execute if score @s ScoreToAbsorption <= #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-00 -0.0001 add_value
execute if score @s ScoreToAbsorption > #_ ScoreToAbsorption run attribute @s max_absorption modifier add tusb:scoretoabsorption-00 0.0001 add_value

tag @s add ScoreToAbsorption.Modified
scoreboard players reset @s ScoreToAbsorption
