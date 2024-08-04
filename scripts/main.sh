#!/usr/bin/bash

mkdir -p /ws/docs/sch/
mkdir -p /ws/docs/pcb/
mkdir -p /ws/docs/checks/

# Find the .kicad_pro file and extract its base name
project_file=$(find /ws/HDK -maxdepth 1 -name "*.kicad_pro" -print -quit)
if [ -z "$project_file" ]; then
  echo "No .kicad_pro file found in /ws/HDK"
  exit 1
fi

project_name=$(basename "$project_file" .kicad_pro)

# export schematics
kicad-cli sch export pdf /ws/HDK/$project_name.kicad_sch --output /ws/docs/sch/sch.pdf
kicad-cli sch export svg /ws/HDK/$project_name.kicad_sch --output /ws/docs/sch/

# erc of schematics
kicad-cli sch erc /ws/HDK/$project_name.kicad_sch --output /ws/docs/checks/erc.json --format json

# # export pcb
# kicad-cli pcb export pdf /ws/HDK/$project_name.kicad_pcb --output /ws/docs/pcb/pcb.pdf
# kicad-cli pcb export svg /ws/HDK/$project_name.kicad_pcb --output /ws/docs/pcb/

kicad-cli pcb drc /ws/HDK/$project_name.kicad_pcb --output /ws/docs/checks/drc.json --format json

mkdir -p /ws/docs/pcb/step
kicad-cli pcb export step /ws/HDK/$project_name.kicad_pcb --output /ws/docs/pcb/pcb.step


# drc of pcb