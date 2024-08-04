# Kicad to Producation

This project aims to provide an easier way to export all required documentation and production files, for my own personal process streamlining.

### Requisites

What features I want this project to have

|S/N|Feature|Directory|Status|
|:--|:--|--:|--:|
|1|<b><u>Perform Checks|docs/erc/|-|
|1.1|Schematics ERC report|sch/|✅|
|1.2|PCB drc report|pcb/|✅||
|||||
|2|<b><u>Exporting Schematics|docs/sch/|-|
|2.1|in: `PDF`, `SVG` format||✅|
|2.2|Collate all `SVG` pages into a markdown doc|||
|||||
|3|<b><u>Exporting PCB|docs/pcb/|-|
|3.1|3D image in: `png` format, in multiple angles (top, bottom, overview)|||
|3.1|in: `step` format|step/|✅|

---

What <b>pre-processing</b> features I want implemented

|SN|Feature|Description|Plugin|Status|
|:--|--|--|--:|--:|
|1| Cleaning of PCB | remove all reference silkscreen | Hide References | |
|2| Exporting to JLCPCB | export pcb gerbers in JLCPCB format | Fabrication Toolkit | |
|3| Exporting ibom | export pcb to interactive bom | Interactive Html BOM | |
|4| Exporting board as pdf | export pcb to pdf format | Board2Pdf | |

