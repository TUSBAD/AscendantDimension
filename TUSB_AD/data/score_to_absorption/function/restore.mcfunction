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

function score_to_absorption:anti_glitch/restore

attribute @s max_absorption modifier remove tusb:scoretoabsorption-17
attribute @s max_absorption modifier remove tusb:scoretoabsorption-16
attribute @s max_absorption modifier remove tusb:scoretoabsorption-15
attribute @s max_absorption modifier remove tusb:scoretoabsorption-14
attribute @s max_absorption modifier remove tusb:scoretoabsorption-13
attribute @s max_absorption modifier remove tusb:scoretoabsorption-12
attribute @s max_absorption modifier remove tusb:scoretoabsorption-11
attribute @s max_absorption modifier remove tusb:scoretoabsorption-10
attribute @s max_absorption modifier remove tusb:scoretoabsorption-0f
attribute @s max_absorption modifier remove tusb:scoretoabsorption-0e
attribute @s max_absorption modifier remove tusb:scoretoabsorption-0d
attribute @s max_absorption modifier remove tusb:scoretoabsorption-0c
attribute @s max_absorption modifier remove tusb:scoretoabsorption-0b
attribute @s max_absorption modifier remove tusb:scoretoabsorption-0a
attribute @s max_absorption modifier remove tusb:scoretoabsorption-09
attribute @s max_absorption modifier remove tusb:scoretoabsorption-08
attribute @s max_absorption modifier remove tusb:scoretoabsorption-07
attribute @s max_absorption modifier remove tusb:scoretoabsorption-06
attribute @s max_absorption modifier remove tusb:scoretoabsorption-05
attribute @s max_absorption modifier remove tusb:scoretoabsorption-04
attribute @s max_absorption modifier remove tusb:scoretoabsorption-03
attribute @s max_absorption modifier remove tusb:scoretoabsorption-02
attribute @s max_absorption modifier remove tusb:scoretoabsorption-01
attribute @s max_absorption modifier remove tusb:scoretoabsorption-00

function score_to_absorption:anti_glitch/unprotect

tag @s remove ScoreToAbsorption.Modified
tag @s add ScoreToAbsorption.Return
