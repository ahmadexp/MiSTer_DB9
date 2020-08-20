Cores adaptados para los Splitters DB9/DB15 de mandos Mega Drive/NeoGeo de Antonio Villena por Aitor Pelaez (NeuroRulez).

Se ha agregado una nueva opción en el menú principal de cada core llamada "UserIO Joystick" para activar los joysticks
Mega Drive / Genesis (DB9MD) o Neo-Geo / Supergun (DB15). Esta opción está deshabilitada de forma predeterminada, 
por lo tanto, se debe acceder al menú osd (F12) por primera vez para activarla y guardar los cambios.

Para controlar tanto el menú OSD del core como y el general, es necesario actualizar los archivos MiSTer y menu.rbf del raíz 
de la tarjeta SD. Puedes obtener estos archivos también aquí.

Control de los menús: Start + C-> Mostrar menú OSD  |  A-> Entrar  |  B-> Esc

El script de actualización update.sh debe ser reemplazado por el actual en /scripts/Update y descargará las versiones oficiales de
todos los cores de la misma manera que el original, excepto cuando haya una versión DB9, en este caso descargará la versión DB9.
Los arcades: Sega System 1 y Gyruss aún deben actualizarse manualmente.

Los cores de este Fork se actualizan al mismo ritmo que los oficiales, agregando esta nueva característica, por lo tanto, 
son totalmente compatibles con estos.

Gracias a Miguel-T80c por aplicar las modificaciones y adaptaciones en los cores, así como del mantenimiento del Fork,
a Fernando Mosquera por adaptar el Main del Mister para manejar el OSD desde los mando DB9MD/DB15 y tambien a
José Manuel Barroso por el desarrollo de la integración y entrega continua CI/CD y los scripts de actrualización.

Los cores que contiene este repositorio no se actualizan periódicamente, utilice el script de actualización update.sh o descargue 
directamente desde la carpeta release de cada repositorio la última actualización de cada uno.

Los cores y sus fuentes actualizados del Fork se encuentran en los siguientes repositorios:

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
https://github.com/Miguel-T80c/Arcade-AsteroidsDeluxe_MiSTer.git

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
https://github.com/Miguel-T80c/Arcade-CosmicAvenger_MiSTer.git

Arcade-CrazyBalloon
https://github.com/Miguel-T80c/Arcade-CrazyBalloon_MiSTer.git

Arcade-CrazyClimber
https://github.com/Miguel-T80c/Arcade-CrazyClimber_MiSTer.git

Arcade-CrazyKong
https://github.com/Miguel-T80c/Arcade-CrazyKong_MiSTer.git

Arcade-Defender
https://github.com/Miguel-T80c/Arcade-Defender_MiSTer.git

Arcade-DigDug
https://github.com/Miguel-T80c/Arcade-DigDug_MiSTer.git

Arcade-Dominos
https://github.com/Miguel-T80c/Arcade-Dominos_MiSTer.git

Arcade-DonkeyKong
https://github.com/Miguel-T80c/Arcade-DonkeyKong_MiSTer.git

Arcade-Dorodon
https://github.com/Miguel-T80c/Arcade-Dorodon_MiSTer.git

Arcade-Druaga
https://github.com/Miguel-T80c/Arcade-Druaga_MiSTer.git

Arcade-FoodFight
https://github.com/Miguel-T80c/Arcade-FoodFight_MiSTer.git

Arcade-Frenzy
https://github.com/Miguel-T80c/Arcade-Frenzy_MiSTer.git

Arcade-Galaga
https://github.com/Miguel-T80c/Arcade-Galaga_MiSTer.git

Arcade-Galaxian
https://github.com/Miguel-T80c/Arcade-Galaxian_MiSTer.git

Arcade-Gaplus
https://github.com/Miguel-T80c/Arcade-Gaplus_MiSTer.git

Arcade-GnG
https://github.com/Miguel-T80c/Arcade-GnG_MiSTer.git

Arcade-GYRUSS
https://github.com/Miguel-T80c/MiSTer-Arcade-Gyruss.git

Arcade-IremM62
https://github.com/Miguel-T80c/Arcade-IremM62_MiSTer.git

Arcade-LadyBug
https://github.com/Miguel-T80c/Arcade-LadyBug_MiSTer.git

Arcade-LunarLander
https://github.com/Miguel-T80c/Arcade-LunarLander_MiSTer.git

Arcade-MarioBros
https://github.com/Miguel-T80c/Arcade-MarioBros_MiSTer.git

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
https://github.com/Miguel-T80c/Arcade-MoonPatrol_MiSTer.git

Arcade-NinjaKun
https://github.com/Miguel-T80c/Arcade-NinjaKun_MiSTer.git

Arcade-Pacman
https://github.com/Miguel-T80c/Arcade-Pacman_MiSTer.git

Arcade-Pengo
https://github.com/Miguel-T80c/Arcade-Pengo_MiSTer.git

Arcade-Phoenix
https://github.com/Miguel-T80c/Arcade-Phoenix_MiSTer.git

Arcade-Pleiads
https://github.com/Miguel-T80c/Arcade-Pleiads_MiSTer.git

Arcade-Pong
https://github.com/Miguel-T80c/Arcade-Pong_MiSTer.git

Arcade-Pooyan
https://github.com/Miguel-T80c/Arcade-Pooyan_MiSTer.git

Arcade-Popeye
https://github.com/Miguel-T80c/Arcade-Popeye_MiSTer.git

Arcade-RallyX
https://github.com/Miguel-T80c/Arcade-RallyX_MiSTer.git

Arcade-RiverPatrol
https://github.com/Miguel-T80c/Arcade-RiverPatrol_MiSTer.git

Arcade-Robotron
https://github.com/Miguel-T80c/Arcade-Robotron_MiSTer.git

Arcade-RshnAtk
https://github.com/Miguel-T80c/Arcade-RushnAttack_MiSTer.git

Arcade-Scramble
https://github.com/Miguel-T80c/Arcade-Scramble_MiSTer.git

Arcade-SEGASYS1
https://github.com/Miguel-T80c/MiSTer-Arcade-SEGASYS1.git

Arcade-SilverLand
https://github.com/Miguel-T80c/Arcade-SilverLand_MiSTer.git

Arcade-SnapJack
https://github.com/Miguel-T80c/Arcade-SnapJack_MiSTer.git

Arcade-SolomonsKey
https://github.com/Miguel-T80c/Arcade-SolomonsKey_MiSTer.git

Arcade-Sprint1
https://github.com/Miguel-T80c/Arcade-Sprint1_MiSTer.git

Arcade-Sprint2
https://github.com/Miguel-T80c/Arcade-Sprint2_MiSTer.git

Arcade-SuperBreakout
https://github.com/Miguel-T80c/Arcade-SuperBreakout_MiSTer.git

Arcade-Tecmo
https://github.com/Miguel-T80c/Arcade-Tecmo_MiSTer.git

Arcade-TimePilot
https://github.com/Miguel-T80c/Arcade-TimePilot_MiSTer.git

Arcade-TraverseUSA
https://github.com/Miguel-T80c/Arcade-TraverseUSA_MiSTer.git

Arcade-Ultratank
https://github.com/Miguel-T80c/Arcade-Ultratank_MiSTer.git

Arcade-Xevious
https://github.com/Miguel-T80c/Arcade-Xevious_MiSTer.git

Arcade-Zaxxon
https://github.com/Miguel-T80c/Arcade-Zaxxon_MiSTer.git

Arcade-ZigZag
https://github.com/Miguel-T80c/Arcade-ZigZag_MiSTer.git

--------
COMPUTER
--------
Amstrad
https://github.com/Miguel-T80c/Amstrad_MiSTer.git

ao486
https://github.com/Miguel-T80c/ao486_MiSTer.git

Apple-II
https://github.com/Miguel-T80c/Apple-II_MiSTer.git

Aquarius
https://github.com/Miguel-T80c/Aquarius_MiSTer.git

Archie
https://github.com/Miguel-T80c/Archie_MiSTer.git

Atari800
https://github.com/Miguel-T80c/Atari800_MiSTer.git

AtariST
https://github.com/Miguel-T80c/AtariST_MiSTer.git

BBCMicro
https://github.com/Miguel-T80c/BBCMicro_MiSTer.git

C16
https://github.com/Miguel-T80c/C16_MiSTer.git

C64
https://github.com/Miguel-T80c/C64_MiSTer.git

Jupiter
https://github.com/Miguel-T80c/Jupiter_MiSTer.git

Laser310
https://github.com/Miguel-T80c/Laser310_MiSTer.git

Minimig-AGA
https://github.com/Miguel-T80c/Minimig-AGA_MiSTer.git

MSX
https://github.com/Miguel-T80c/MSX_MiSTer.git

Oric
https://github.com/Miguel-T80c/Oric_MiSTer.git

PCW
https://github.com/Miguel-T80c/Amstrad-PCW_MiSTer.git

QL
https://github.com/Miguel-T80c/QL_MiSTer.git

SAMCoupe
https://github.com/Miguel-T80c/SAM-Coupe_MiSTer.git

Ti994a
https://github.com/Miguel-T80c/TI-99_4A_MiSTer.git

TRS-80
https://github.com/Miguel-T80c/TRS-80_MiSTer.git

TSConf
https://github.com/Miguel-T80c/TSConf_MiSTer.git

Vector-06C
https://github.com/Miguel-T80c/Vector-06C_MiSTer.git

VIC20
https://github.com/Miguel-T80c/VIC20_MiSTer.git

ZX-Spectrum
https://github.com/Miguel-T80c/ZX-Spectrum_MISTer.git

ZX81
https://github.com/Miguel-T80c/ZX81_MiSTer.git

-------
CONSOLE
-------
Astrocade
https://github.com/Miguel-T80c/Astrocade_MiSTer.git

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
