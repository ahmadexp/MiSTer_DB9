Cores adaptados para los Splitters DB9/DB15 de mandos Mega Drive/NeoGeo de Antonio Villena por Aitor Pelaez (NeuroRulez).

Se ha agregado una nueva opción en el menú principal de cada core llamada "UserIO Joystick" para activar los joysticks
Mega Drive / Genesis (DB9MD) o Neo-Geo / Supergun (DB15). Esta opción está deshabilitada de forma predeterminada, 
por lo tanto, se debe acceder al menú osd (F12) por primera vez para activarla y guardar los cambios.

Para controlar tanto el menú OSD del core como y el general, es necesario actualizar los archivos MiSTer y menu.rbf del raíz 
de la tarjeta SD. Puedes obtener estos archivos también aquí.

Control de los menús: Start + C-> Mostrar menú OSD  |  A-> Entrar  |  B-> Esc

El script de actualización update.sh debe ser reempladp por el actual en /scripts/Update y descargará las versiones oficiales de
todos los cores de la misma manera que el original, excepto cuando haya una versión DB9, en este caso descargará la versión DB9.
Los arcades: Sega System 1 y Gyruss aún deben actualizarse manualmente.

Los cores de este Fork se actualizan al mismo ritmo que los oficiales, agregando esta nueva característica, por lo tanto, 
son totalmente compatibles con estos.

Gracias a Miguel-T80c por aplicar las modificaciones y adaptaciones en los cores, así como el mantenimiento del Fork,
a Fernando Mosquera por adaptar el Main del Mister para manejar el OSD desde los mando DB9MD/DB15 y tambien a
José Manuel Barroso por el desarrollo de la integración y entrega continua CI/CD y el del script de actrualización.

Los fuentes del Fork actualizadas se pueden encontrar en los siguientes repositorios:

MiSTer
https://github.com/Miguel-T80c/Main_MiSTer.git

Menu
https://github.com/Miguel-T80c/Menu_MiSTer.git

Updater script
https://github.com/theypsilon/Updater_script_MiSTer_DB9.git

------
ARCADE
------
Arcade-Arkanoid
https://github.com/Miguel-T80c/Arcade-Arkanoid_MISTer.git

Arcade-Asteroids
https://github.com/Miguel-T80c/Arcade-Asteroids_MiSTer.git

Arcade-AsteroidsDeluxe
https://github.com/Miguel-T80c/Arcade-AsteroidsDeluxe_Mister.git

Arcade-Astrocade
https://github.com/Miguel-T80c/Arcade-Astrocade_MiSTer.git

Arcade-AtariTetris
https://github.com/Miguel-T80c/Arcade-ATetris_MiSTer.git

Arcade-Bagman
https://github.com/Miguel-T80c/Arcade-Bagman_MiSTer.git

Arcade-Berzerk
https://github.com/Miguel-T80c/Arcade-Berzerk_MiSTer.git

Arcade-BlackWidow
https://github.com/Miguel-T80c/Arcade-BlackWidow_MiSTer.git

Arcade-BombJack
https://github.com/Miguel-T80c/Arcade-BombJack_MiSTer.git

Arcade-BurgerTime
https://github.com/Miguel-T80c/Arcade-BurgerTime_MiSTer.git

Arcade-BurningRubber
https://github.com/Miguel-T80c/Arcade-BurningRubber_MiSTer.git

Arcade-CanyonBomber
https://github.com/Miguel-T80c/Arcade-CanyonBomber_MiSTer.git

Arcade-Centipede
https://github.com/Miguel-T80c/Arcade-Centipede_MiSTer.git

Arcade-ComputerSpace
https://github.com/Miguel-T80c/Arcade-ComputerSpace_MiSTer.git

Arcade-CosmicAvenger
https://github.com/Miguel-T80c/Arcade-CosmicAvenger_Mister.git

Arcade-CrazyClimber
https://github.com/Miguel-T80c/Arcade-CrazyClimber_Mister.git

Arcade-CrazyKong
https://github.com/Miguel-T80c/Arcade-CrazyKong_Mister.git

Arcade-Defender
https://github.com/Miguel-T80c/Arcade-Defender_MiSTer.git

Arcade-DigDug
https://github.com/Miguel-T80c/Arcade-DigDug_MiSTer.git

Arcade-Dominos
https://github.com/Miguel-T80c/Arcade-Dominos_Mister.git

Arcade-DonkeyKong
https://github.com/Miguel-T80c/Arcade-DonkeyKong_MiSTer.git

Arcade-Dorodon
https://github.com/Miguel-T80c/Arcade-Dorodon_Mister.git

Arcade-Druaga
https://github.com/Miguel-T80c/Arcade-Druaga_MiSTer.git

Arcade-FoodFight
https://github.com/Miguel-T80c/Arcade-FoodFight_Mister.git

Arcade-Frenzy
https://github.com/Miguel-T80c/Arcade-Frenzy_Mister.git

Arcade-Galaga
https://github.com/Miguel-T80c/Arcade-Galaga_MiSTer.git

Arcade-Galaxian
https://github.com/Miguel-T80c/Arcade-Galaxian_MiSTer.git

Arcade-Gaplus
https://github.com/Miguel-T80c/Arcade-Gaplus_MiSTer.git

Arcade-GnG
https://github.com/Miguel-T80c/Arcade-GnG_Mister.git

Arcade-Gyruss
https://github.com/Miguel-T80c/MiSTer-Arcade-Gyruss.git

Arcade-LadyBug
https://github.com/Miguel-T80c/Arcade-LadyBug_Mister.git

Arcade-LunarLander
https://github.com/Miguel-T80c/Arcade-LunarLander_Mister.git

Arcade-MCR1
https://github.com/Miguel-T80c/Arcade-MCR1_MiSTer.git

Arcade-MCR2
https://github.com/Miguel-T80c/Arcade-MCR2_MiSTer.git

Arcade-MCR3
https://github.com/Miguel-T80c/Arcade-MCR3_MiSTer.git

Arcade-MCR3Mono
https://github.com/Miguel-T80c/Arcade-MCR3Mono_MiSTer.git

Arcade-MCR3Scroll
https://github.com/Miguel-T80c/Arcade-MCR3Scroll_MiSTer.git

Arcade-MoonPatrol
https://github.com/Miguel-T80c/Arcade-MoonPatrol_Mister.git

Arcade-NinjaKun
https://github.com/Miguel-T80c/Arcade-NinjaKun_MiSTer.git

Arcade-Pacman
https://github.com/Miguel-T80c/Arcade-Pacman_MiSTer.git

Arcade-Pengo
https://github.com/Miguel-T80c/Arcade-Pengo_Mister.git

Arcade-Phoenix
https://github.com/Miguel-T80c/Arcade-Phoenix_Mister.git

Arcade-Pleiads
https://github.com/Miguel-T80c/Arcade-Pleiads_Mister.git

Arcade-Pong
https://github.com/Miguel-T80c/Arcade-Pong_Mister.git

Arcade-Pooyan
https://github.com/Miguel-T80c/Arcade-Pooyan_Mister.git

Arcade-Popeye
https://github.com/Miguel-T80c/Arcade-Popeye_MiSTer.git

Arcade-RallyX
https://github.com/Miguel-T80c/Arcade-RallyX_MiSTer.git

Arcade-RiverPatrol
https://github.com/Miguel-T80c/Arcade-RiverPatrol_Mister.git

Arcade-Robotron
https://github.com/Miguel-T80c/Arcade-Robotron_MiSTer.git

Arcade-RshnAtk
https://github.com/Miguel-T80c/Arcade-RushnAttack_MiSTer.git

Arcade-Rygar
https://github.com/Miguel-T80c/Arcade-Rygar_MiSTer.git

Arcade-Scramble
https://github.com/Miguel-T80c/Arcade-Scramble_MiSTer.git

Arcade-SegaSYS1
https://github.com/Miguel-T80c/MiSTer-Arcade-SegaSYS1.git

Arcade-SilverLand
https://github.com/Miguel-T80c/Arcade-SilverLand_Mister.git

Arcade-SnapJack
https://github.com/Miguel-T80c/Arcade-SnapJack_Mister.git

Arcade-SolomonsKey
https://github.com/Miguel-T80c/Arcade-SolomonsKey_MiSTer.git

Arcade-Sprint1
https://github.com/Miguel-T80c/Arcade-Sprint1_MiSTer.git

Arcade-Sprint2
https://github.com/Miguel-T80c/Arcade-Sprint2_MiSTer.git

Arcade-SuperBreakout
https://github.com/Miguel-T80c/Arcade-SuperBreakout_Mister.git

Arcade-TimePilot
https://github.com/Miguel-T80c/Arcade-TimePilot_Mister.git

Arcade-TraverseUSA
https://github.com/Miguel-T80c/Arcade-TraverseUSA_Mister.git

Arcade-Ultratank
https://github.com/Miguel-T80c/Arcade-Ultratank_MiSTer.git

Arcade-Xevious
https://github.com/Miguel-T80c/Arcade-Xevious_MiSTer.git

Arcade-Zaxxon
https://github.com/Miguel-T80c/Arcade-Zaxxon_MiSTer.git

Arcade-ZigZag
https://github.com/Miguel-T80c/Arcade-ZigZag_Mister.git

--------
COMPUTER
--------
Amstrad
https://github.com/Miguel-T80c/Amstrad_MiSTer.git

Apple-II
https://github.com/Miguel-T80c/Apple-II_Mister.git

Aquarius
https://github.com/Miguel-T80c/Aquarius_Mister.git

Archie
https://github.com/Miguel-T80c/Archie_MiSTer.git

Atari800
https://github.com/Miguel-T80c/Atari800_MiSTer.git

AtariST
https://github.com/Miguel-T80c/AtariST_MiSTer.git

BBCMicro
https://github.com/Miguel-T80c/BBCMicro_Mister.git

C16
https://github.com/Miguel-T80c/C16_Mister.git

C64
https://github.com/Miguel-T80c/C64_MiSTer.git

HT1080Z
https://github.com/Miguel-T80c/HT1080Z_Mister.git

Jupiter
https://github.com/Miguel-T80c/Jupiter_Mister.git

Minimig
https://github.com/Miguel-T80c/Minimig-AGA_MiSTer.git

MSX
https://github.com/Miguel-T80c/MSX_MiSTer.git

Oric
https://github.com/Miguel-T80c/Oric_MiSTer.git

QL
https://github.com/Miguel-T80c/QL_Mister.git

SAMCoupe
https://github.com/Miguel-T80c/SAM-Coupe_Mister.git

Ti994a
https://github.com/Miguel-T80c/TI-99_4A_Mister.git

TSConf
https://github.com/Miguel-T80c/TSConf_MiSTer.git

Vector-06C
https://github.com/Miguel-T80c/Vector-06C_Mister.git

VIC20
https://github.com/Miguel-T80c/VIC20_Mister.git

ZX-Spectrum
https://github.com/Miguel-T80c/ZX-Spectrum_MISTer.git

ZX81
https://github.com/Miguel-T80c/ZX81_Mister.git

-------
CONSOLE
-------
Astrocade
https://github.com/Miguel-T80c/Astrocade_Mister.git

Atari2600
https://github.com/Miguel-T80c/Atari2600_MiSTer.git

Atari5200
https://github.com/Miguel-T80c/Atari800_MiSTer.git

AY-3-8500
https://github.com/Miguel-T80c/AY-3-8500-MiSTer.git

ColecoVision
https://github.com/Miguel-T80c/ColecoVision_MiSTer.git

Gameboy
https://github.com/Miguel-T80c/Gameboy_MiSTer.git

GBA
https://github.com/Miguel-T80c/GBA_MiSTer.git

Genesis
https://github.com/Miguel-T80c/Genesis_MiSTer.git

MegaCD
https://github.com/Miguel-T80c/MegaCD_MiSTer.git

NeoGeo
https://github.com/Miguel-T80c/NeoGeo_MiSTer.git

NES
https://github.com/Miguel-T80c/NES_MiSTer.git

SMS
https://github.com/Miguel-T80c/SMS_MiSTer.git

SNES
https://github.com/Miguel-T80c/SNES_MiSTer.git

TurboGrafx16
https://github.com/Miguel-T80c/TurboGrafx16_MiSTer.git

Vectrex
https://github.com/Miguel-T80c/Vectrex_MiSTer.git

-----
OTHER
-----
Arduboy
https://github.com/Miguel-T80c/Arduboy_Mister.git

FlappyBird
https://github.com/Miguel-T80c/FlappyBird_Mister.git