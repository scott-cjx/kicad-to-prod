#!/usr/bin/bash

# export schematics
kicad-cli sch export pdf /ws/HDK/*kicad_sch --output sch/sch.pdf
kicad-cli sch export svg /ws/HDK/*kicad_sch --output sch/

# erc of schematics
kicad-cli sch erc /ws/HDK/*kicad_sch --output checks/erc.rpt
