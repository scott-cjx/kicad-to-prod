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
kicad-cli sch erc /ws/HDK/*kicad_sch --output /ws/docs/checks/erc.json --format json

# export pcb
kicad-cli pcb export pdf /ws/HDK/*kicad_pcb --output /ws/docs/pcb/pcb.pdf
kicad-cli pcb export svg /ws/HDK/*kicad_pcb --output /ws/docs/pcb/

mkdir -p /ws/docs/pcb/step
kicad-cli pcb drc /ws/HDK/*kicad_pcb --output /ws/docs/checks/drc.json --format json

# drc of pcb