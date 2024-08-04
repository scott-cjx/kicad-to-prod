#!/usr/bin/bash

# export schematics
kicad-cli sch export pdf /ws/HDK/*kicad_sch --output /ws/docs/sch
kicad-cli sch export svg /ws/HDK/*kicad_sch --output /ws/docs/sch

# erc of schematics
kicad-cli sch erc /ws/HDK/*kicad_sch --output /ws/docs/checks
