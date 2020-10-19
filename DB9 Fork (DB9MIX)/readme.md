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

Gracias a MiSTer-DB9 por aplicar las modificaciones y adaptaciones en los cores, así como del mantenimiento del Fork,
a Fernando Mosquera por adaptar el Main del Mister para manejar el OSD desde los mando DB9MD/DB15 y tambien a
José Manuel Barroso por el desarrollo de la integración y entrega continuas (CI/CD=, por el de los scripts de actualización así
como por la integración en el Main de las opciones de menús DB9 de algunos cores.

Los cores que contiene este repositorio no se actualizan periódicamente, utilice el script de actualización update.sh o descargue 
directamente desde la carpeta release de cada repositorio la última actualización de cada uno.

Los cores y sus fuentes actualizados del Fork se encuentran en los siguientes repositorios:

MiSTer
https://github.com/MiSTer-DB9/Main_MiSTer.git

Menu
https://github.com/MiSTer-DB9/Menu_MiSTer.git

Updater script
https://github.com/theypsilon/Updater_script_MiSTer_DB9.git

------
ARCADE
------
Arcade-Arkanoid
https://github.com/MiSTer-DB9/Arcade-Arkanoid_MISTer.git

Arcade-Asteroids
https://github.com/MiSTer-DB9/Arcade-Asteroids_MiSTer.git

Arcade-AsteroidsDeluxe
https://github.com/MiSTer-DB9/Arcade-AsteroidsDeluxe_MiSTer.git

Arcade-Astrocade
https://github.com/MiSTer-DB9/Arcade-Astrocade_MiSTer.git

Arcade-AtariTetris
https://github.com/MiSTer-DB9/Arcade-ATetris_MiSTer.git

Arcade-Bagman
https://github.com/MiSTer-DB9/Arcade-Bagman_MiSTer.git

Arcade-Berzerk
https://github.com/MiSTer-DB9/Arcade-Berzerk_MiSTer.git

Arcade-BlackWidow
https://github.com/MiSTer-DB9/Arcade-BlackWidow_MiSTer.git

Arcade-BombJack
https://github.com/MiSTer-DB9/Arcade-BombJack_MiSTer.git

Arcade-BurgerTime
https://github.com/MiSTer-DB9/Arcade-BurgerTime_MiSTer.git

Arcade-BurningRubber
https://github.com/MiSTer-DB9/Arcade-BurningRubber_MiSTer.git

Arcade-CanyonBomber
https://github.com/MiSTer-DB9/Arcade-CanyonBomber_MiSTer.git

Arcade-Centipede
https://github.com/MiSTer-DB9/Arcade-Centipede_MiSTer.git

Arcade-ComputerSpace
https://github.com/MiSTer-DB9/Arcade-ComputerSpace_MiSTer.git

Arcade-CosmicAvenger
https://github.com/MiSTer-DB9/Arcade-CosmicAvenger_MiSTer.git

Arcade-CrazyBalloon
https://github.com/MiSTer-DB9/Arcade-CrazyBalloon_MiSTer.git

Arcade-CrazyClimber
https://github.com/MiSTer-DB9/Arcade-CrazyClimber_MiSTer.git

Arcade-CrazyKong
https://github.com/MiSTer-DB9/Arcade-CrazyKong_MiSTer.git

Arcade-Defender
https://github.com/MiSTer-DB9/Arcade-Defender_MiSTer.git

Arcade-DigDug
https://github.com/MiSTer-DB9/Arcade-DigDug_MiSTer.git

Arcade-Dominos
https://github.com/MiSTer-DB9/Arcade-Dominos_MiSTer.git

Arcade-DonkeyKong
https://github.com/MiSTer-DB9/Arcade-DonkeyKong_MiSTer.git

Arcade-Dorodon
https://github.com/MiSTer-DB9/Arcade-Dorodon_MiSTer.git

Arcade-Druaga
https://github.com/MiSTer-DB9/Arcade-Druaga_MiSTer.git

Arcade-FoodFight
https://github.com/MiSTer-DB9/Arcade-FoodFight_MiSTer.git

Arcade-Frenzy
https://github.com/MiSTer-DB9/Arcade-Frenzy_MiSTer.git

Arcade-Galaga
https://github.com/MiSTer-DB9/Arcade-Galaga_MiSTer.git

Arcade-Galaxian
https://github.com/MiSTer-DB9/Arcade-Galaxian_MiSTer.git

Arcade-Gaplus
https://github.com/MiSTer-DB9/Arcade-Gaplus_MiSTer.git

Arcade-GnG
https://github.com/MiSTer-DB9/Arcade-GnG_MiSTer.git

Arcade-GYRUSS
https://github.com/MiSTer-DB9/MiSTer-Arcade-Gyruss.git

Arcade-IremM62
https://github.com/MiSTer-DB9/Arcade-IremM62_MiSTer.git

Arcade-LadyBug
https://github.com/MiSTer-DB9/Arcade-LadyBug_MiSTer.git

Arcade-LunarLander
https://github.com/MiSTer-DB9/Arcade-LunarLander_MiSTer.git

Arcade-MarioBros
https://github.com/MiSTer-DB9/Arcade-MarioBros_MiSTer.git

Arcade-MCR1
https://github.com/MiSTer-DB9/Arcade-MCR1_MiSTer.git

Arcade-MCR2
https://github.com/MiSTer-DB9/Arcade-MCR2_MiSTer.git

Arcade-MCR3
https://github.com/MiSTer-DB9/Arcade-MCR3_MiSTer.git

Arcade-MCR3Mono
https://github.com/MiSTer-DB9/Arcade-MCR3Mono_MiSTer.git

Arcade-MCR3Scroll
https://github.com/MiSTer-DB9/Arcade-MCR3Scroll_MiSTer.git

Arcade-MoonPatrol
https://github.com/MiSTer-DB9/Arcade-MoonPatrol_MiSTer.git

Arcade-NinjaKun
https://github.com/MiSTer-DB9/Arcade-NinjaKun_MiSTer.git

Arcade-Pacman
https://github.com/MiSTer-DB9/Arcade-Pacman_MiSTer.git

Arcade-Pengo
https://github.com/MiSTer-DB9/Arcade-Pengo_MiSTer.git

Arcade-Phoenix
https://github.com/MiSTer-DB9/Arcade-Phoenix_MiSTer.git

Arcade-Pleiads
https://github.com/MiSTer-DB9/Arcade-Pleiads_MiSTer.git

Arcade-Pong
https://github.com/MiSTer-DB9/Arcade-Pong_MiSTer.git

Arcade-Pooyan
https://github.com/MiSTer-DB9/Arcade-Pooyan_MiSTer.git

Arcade-Popeye
https://github.com/MiSTer-DB9/Arcade-Popeye_MiSTer.git

Arcade-RallyX
https://github.com/MiSTer-DB9/Arcade-RallyX_MiSTer.git

Arcade-RiverPatrol
https://github.com/MiSTer-DB9/Arcade-RiverPatrol_MiSTer.git

Arcade-Robotron
https://github.com/MiSTer-DB9/Arcade-Robotron_MiSTer.git

Arcade-RshnAtk
https://github.com/MiSTer-DB9/Arcade-RushnAttack_MiSTer.git

Arcade-Scramble
https://github.com/MiSTer-DB9/Arcade-Scramble_MiSTer.git

Arcade-SEGASYS1
https://github.com/MiSTer-DB9/MiSTer-Arcade-SEGASYS1.git

Arcade-SilverLand
https://github.com/MiSTer-DB9/Arcade-SilverLand_MiSTer.git

Arcade-SnapJack
https://github.com/MiSTer-DB9/Arcade-SnapJack_MiSTer.git

Arcade-SolomonsKey
https://github.com/MiSTer-DB9/Arcade-SolomonsKey_MiSTer.git

Arcade-Sprint1
https://github.com/MiSTer-DB9/Arcade-Sprint1_MiSTer.git

Arcade-Sprint2
https://github.com/MiSTer-DB9/Arcade-Sprint2_MiSTer.git

Arcade-SuperBreakout
https://github.com/MiSTer-DB9/Arcade-SuperBreakout_MiSTer.git

Arcade-Tecmo
https://github.com/MiSTer-DB9/Arcade-Tecmo_MiSTer.git

Arcade-TimePilot
https://github.com/MiSTer-DB9/Arcade-TimePilot_MiSTer.git

Arcade-TraverseUSA
https://github.com/MiSTer-DB9/Arcade-TraverseUSA_MiSTer.git

Arcade-Ultratank
https://github.com/MiSTer-DB9/Arcade-Ultratank_MiSTer.git

Arcade-Xevious
https://github.com/MiSTer-DB9/Arcade-Xevious_MiSTer.git

Arcade-Zaxxon
https://github.com/MiSTer-DB9/Arcade-Zaxxon_MiSTer.git

Arcade-ZigZag
https://github.com/MiSTer-DB9/Arcade-ZigZag_MiSTer.git

--------
COMPUTER
--------
Amstrad
https://github.com/MiSTer-DB9/Amstrad_MiSTer.git

ao486
https://github.com/MiSTer-DB9/ao486_MiSTer.git

Apple-II
https://github.com/MiSTer-DB9/Apple-II_MiSTer.git

Aquarius
https://github.com/MiSTer-DB9/Aquarius_MiSTer.git

Archie
https://github.com/MiSTer-DB9/Archie_MiSTer.git

Atari800
https://github.com/MiSTer-DB9/Atari800_MiSTer.git

AtariST
https://github.com/MiSTer-DB9/AtariST_MiSTer.git

BBCMicro
https://github.com/MiSTer-DB9/BBCMicro_MiSTer.git

C16
https://github.com/MiSTer-DB9/C16_MiSTer.git

C64
https://github.com/MiSTer-DB9/C64_MiSTer.git

Jupiter
https://github.com/MiSTer-DB9/Jupiter_MiSTer.git

Laser310
https://github.com/MiSTer-DB9/Laser310_MiSTer.git

Minimig-AGA
https://github.com/MiSTer-DB9/Minimig-AGA_MiSTer.git

MSX
https://github.com/MiSTer-DB9/MSX_MiSTer.git

Oric
https://github.com/MiSTer-DB9/Oric_MiSTer.git

PCW
https://github.com/MiSTer-DB9/Amstrad-PCW_MiSTer.git

QL
https://github.com/MiSTer-DB9/QL_MiSTer.git

SAMCoupe
https://github.com/MiSTer-DB9/SAM-Coupe_MiSTer.git

Ti994a
https://github.com/MiSTer-DB9/TI-99_4A_MiSTer.git

TRS-80
https://github.com/MiSTer-DB9/TRS-80_MiSTer.git

TSConf
https://github.com/MiSTer-DB9/TSConf_MiSTer.git

Vector-06C
https://github.com/MiSTer-DB9/Vector-06C_MiSTer.git

VIC20
https://github.com/MiSTer-DB9/VIC20_MiSTer.git

ZX-Spectrum
https://github.com/MiSTer-DB9/ZX-Spectrum_MISTer.git

ZX81
https://github.com/MiSTer-DB9/ZX81_MiSTer.git

-------
CONSOLE
-------
Astrocade
https://github.com/MiSTer-DB9/Astrocade_MiSTer.git

Atari2600
https://github.com/MiSTer-DB9/Atari2600_MiSTer.git

Atari5200
https://github.com/MiSTer-DB9/Atari800_MiSTer.git

AY-3-8500
https://github.com/MiSTer-DB9/AY-3-8500-MiSTer.git

ColecoVision
https://github.com/MiSTer-DB9/ColecoVision_MiSTer.git

Gameboy
https://github.com/MiSTer-DB9/Gameboy_MiSTer.git

GBA
https://github.com/MiSTer-DB9/GBA_MiSTer.git

Genesis
https://github.com/MiSTer-DB9/Genesis_MiSTer.git

MegaCD
https://github.com/MiSTer-DB9/MegaCD_MiSTer.git

NeoGeo
https://github.com/MiSTer-DB9/NeoGeo_MiSTer.git

NES
https://github.com/MiSTer-DB9/NES_MiSTer.git

SMS
https://github.com/MiSTer-DB9/SMS_MiSTer.git

SNES
https://github.com/MiSTer-DB9/SNES_MiSTer.git

TurboGrafx16
https://github.com/MiSTer-DB9/TurboGrafx16_MiSTer.git

Vectrex
https://github.com/MiSTer-DB9/Vectrex_MiSTer.git

-----
OTHER
-----
Arduboy
https://github.com/MiSTer-DB9/Arduboy_Mister.git

FlappyBird
https://github.com/MiSTer-DB9/FlappyBird_Mister.git
