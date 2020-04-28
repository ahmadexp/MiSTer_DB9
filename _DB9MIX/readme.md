Cores adaptados para los Splitters DB9/DB15 de mandos Mega Drive/NeoGeo de Antonio Villena por Aitor Pelaez (NeuroRulez).

Se ha agregado una nueva opción en el menú principal de cada core llamada "UserIO Joystick" para activar los joysticks
Mega Drive / Genesis (DB9MD) o Neo-Geo / Supergun (DB15). Esta opción está deshabilitada de forma predeterminada, 
por lo tanto, se debe acceder al menú osd (F12) por primera vez para activarla y guardar los cambios.

Para controlar tanto el menú OSD del core como y el general, es necesario actualizar los archivos MiSTer y menu.rbf del raíz 
de la tarjeta SD. Puedes obtener estos archivos también aquí.

Control de los menús: Start + C-> Mostrar menú OSD  |  A-> Entrar  |  B-> Esc

El script de actualización update.sh debe ser reempladp por el actual en /scripts/Update y descargará las versiones oficiales de
todos los cores de la misma manera que el original, excepto cuando haya una versión DB9, en este caso descargará la versión DB9.
Los arcades: Rygar, Sega System 1 y Gyruss aún deben actualizarse manualmente.

Los cores de este Fork se actualizan al mismo ritmo que los oficiales, agregando esta nueva característica, por lo tanto, 
son totalmente compatibles con estos.

Gracias a Miguel-T80c por aplicar las modificaciones y adaptaciones en los cores, así como el mantenimiento del Fork,
a Fernando Mosquera por adaptar el Main del Mister para manejar el OSD desde los mando DB9MD/DB15 y tambien a
José Manuel Barroso por el desarrollo de la integración y entrega continua CI/CD y el del script de actrualización.

Los fuentes del Fork se pueden encontrar en los siguientes repositorios:

MiSTer
https://github.com/Miguel-T80c/Main_MiSTer.git

Menu
https://github.com/neurorulez/Menu_MiSTer/tree/Joy_DB9MIX

Updater script
https://github.com/theypsilon/Updater_script_MiSTer_DB9.git

------
ARCADE
------
Arkanoid
https://github.com/Miguel-T80c/Arcade-Arkanoid_MISTer.git

Astrocade (Multiarcade)
https://github.com/Miguel-T80c/Arcade-Astrocade_MiSTer.git

AtariTetris
https://github.com/Miguel-T80c/Arcade-ATetris_MiSTer.git

BlackWidow
https://github.com/Miguel-T80c/Arcade-BlackWidow_MiSTer.git

Berzerk
https://github.com/Miguel-T80c/Arcade-Berzerk_MiSTer.git

Bomb Jack
https://github.com/Miguel-T80c/Arcade-BombJack_MiSTer.git

Centipede
https://github.com/Miguel-T80c/Arcade-Centipede_MiSTer.git

Defender
https://github.com/Miguel-T80c/Arcade-Defender_MiSTer.git

DonkeyKong
https://github.com/Miguel-T80c/Arcade-DonkeyKong_MiSTer.git

Galaga
https://github.com/Miguel-T80c/Arcade-Galaga_MiSTer.git

Galaxian (multiarcade)
https://github.com/Miguel-T80c/Arcade-Galaxian_MiSTer.git

Gaplus
https://github.com/Miguel-T80c/Arcade-Gaplus_MiSTer.git

Gyruss
https://github.com/Miguel-T80c/MiSTer-Arcade-Gyruss.git

MCR1 (multiarcade)
https://github.com/Miguel-T80c/Arcade-MCR1_MiSTer.git

MCR2 (multiarcade)
https://github.com/Miguel-T80c/Arcade-MCR2_MiSTer.git

MCR3 (multiarcade)
https://github.com/Miguel-T80c/Arcade-MCR3_MiSTer.git

MCR3Mono (multiarcade)
https://github.com/Miguel-T80c/Arcade-MCR3Mono_MiSTer.git

MCR3Scroll (multiarcade)
https://github.com/Miguel-T80c/Arcade-MCR3Scroll_MiSTer.git

Ninja Kun
https://github.com/Miguel-T80c/Arcade-NinjaKun_MiSTer.git

Pacman (multiarcade)
https://github.com/Miguel-T80c/Arcade-Pacman_MiSTer.git

Popeye
https://github.com/Miguel-T80c/Arcade-Popeye_MiSTer.git

Rally X
https://github.com/Miguel-T80c/Arcade-RallyX_MiSTer.git

Robotron (multiarcade)
https://github.com/Miguel-T80c/Arcade-Robotron_MiSTer.git

RushnAttack / Green Beret
https://github.com/Miguel-T80c/Arcade-RushnAttack_MiSTer.git

Rygar
https://github.com/Miguel-T80c/rygar-fpga.git

Scramble (multiarcade)
https://github.com/Miguel-T80c/Arcade-Scramble_MiSTer.git

Sega System 1 (multiarcade)
https://github.com/Miguel-T80c/MiSTer-Arcade-SegaSYS1.git

Solomon's key
https://github.com/Miguel-T80c/Arcade-SolomonsKey_MiSTer.git

Sprint1
https://github.com/Miguel-T80c/Arcade-Sprint1_MiSTer.git

Sprint2
https://github.com/Miguel-T80c/Arcade-Sprint2_MiSTer.git

The Tower of Druaga (multiarcade)
https://github.com/Miguel-T80c/Arcade-Druaga_MiSTer.git

Ultratank
https://github.com/neurorulez/Arcade-Ultratank_MiSTer/tree/Joy_DB9MIX

Xevious
https://github.com/Miguel-T80c/Arcade-Xevious_MiSTer.git

--------
COMPUTER
--------
Acorn Archimedes
https://github.com/Miguel-T80c/Archie_MiSTer.git

Amiga Minimig-AGA
https://github.com/Miguel-T80c/Minimig-AGA_MiSTer.git

Amstrad
https://github.com/Miguel-T80c/Amstrad_MiSTer.git

Atari 800
https://github.com/Miguel-T80c/Atari800_MiSTer.git

Atari ST
https://github.com/Miguel-T80c/AtariST_MiSTer.git

Commodore 64
https://github.com/Miguel-T80c/C64_MiSTer.git

MSX
https://github.com/Miguel-T80c/MSX_MiSTer.git

Oric
https://github.com/Miguel-T80c/Oric_MiSTer.git

TSConf
https://github.com/Miguel-T80c/TSConf_MiSTer.git

ZX Spectrum
https://github.com/Miguel-T80c/ZX-Spectrum_MISTer.git

-------
CONSOLE
-------
Atari 2600
https://github.com/Miguel-T80c/Atari2600_MiSTer.git

Atari 5200
https://github.com/Miguel-T80c/Atari800_MiSTer.git

ColecoVision
https://github.com/Miguel-T80c/ColecoVision_MiSTer.git

NeoGeo
https://github.com/Miguel-T80c/NeoGeo_MiSTer.git

Nintendo Gameboy
https://github.com/Miguel-T80c/Gameboy_MiSTer.git

Nintendo Gameboy Advance
https://github.com/Miguel-T80c/GBA_MiSTer.git

Nintendo NES
https://github.com/neurorulez/NES_MiSTer/tree/Joy_DB9MIX

Nintendo Super NES
https://github.com/neurorulez/SNES_MiSTer/tree/Joy_DB9MIX

Sega Genesis / Mega Drive
https://github.com/Miguel-T80c/Genesis_MiSTer.git

Sega Master System and Game Gear
https://github.com/Miguel-T80c/SMS_MiSTer.git

Sega MegaCD
https://github.com/Miguel-T80c/MegaCD_MiSTer.git

TurboGrafx16
https://github.com/Miguel-T80c/TurboGrafx16_MiSTer.git

Vectrex
https://github.com/Miguel-T80c/Vectrex_MiSTer.git