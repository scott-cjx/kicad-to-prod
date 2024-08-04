#!/usr/bin/bash

mkdir -p /ws/docs/sch/
mkdir -p /ws/docs/pcb/
mkdir -p /ws/docs/checks/

# export schematics
touch /ws/docs/sch/sch.pdf
kicad-cli sch export pdf /ws/HDK/*kicad_sch --output /ws/docs/sch/sch.pdf
kicad-cli sch export svg /ws/HDK/*kicad_sch --output /ws/docs/sch/

touch /ws/docs/checks/erc.rpt
# erc of schematics
kicad-cli sch erc /ws/HDK/*kicad_sch --output /ws/docs/checks/erc.rpt
