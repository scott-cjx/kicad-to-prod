#!/usr/bin/bash

# Create output directories if they don't exist

mkdir -p /ws/docs/checks
mkdir -p /ws/docs/pcb
mkdir -p /ws/docs/sch
cd /ws/docs/sch

# export schematics
kicad-cli sch export pdf /ws/HDK/*kicad_sch 
kicad-cli sch export svg /ws/HDK/*kicad_sch

mkdir -p /ws/docs/checks/erc
cd /ws/docs/checks/erc

# erc of schematics
kicad-cli sch erc /ws/HDK/*kicad_sch
