Adapted MiSTer FPGA cores to the DB9 and DB15 joysticks.

A new option has been added in the main menu of this core called "UserIO Joystick" to activate joysticks 
Mega Drive/Genesis (DB9MD) or Neo-Geo/Supergun (DB15). This feature is disabled by default, therefore you
must enter the menu for the first time to activate it and save.

For total control from the UserIO Joysticks (also the OSD menu) is necessary to update the files 
MiSTer and menu.rbf from the root of the SD card. You can get this files also right here. 

Menu controls buttons:  Start+C-> Show OSD menu  |  A-> Enter  |  B-> Esc

The cores of this fork are updated at the same rate as the official ones, adding this new feature, therefore, they are fully compatible with these.

The updater script file update.sh must replace the current one in /scripts/ Update and will download the official versions of all cores in the same way except when there is a DB9 version, in this case it will download the DB9 version. The first time this script is launched it will be slower because it will do a general update. It is advised to install this script to download the always the latest cores.The arcade cores: Rygar, Sega System 1, Gyruss and all of Jotego must still be manually updated from this repository.

SOURCES:

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

rygar
https://github.com/Miguel-T80c/rygar-fpga.git

--------
COMPUTER
--------
Amstrad
https://github.com/Miguel-T80c/Amstrad_MiSTer.git

Archie
https://github.com/Miguel-T80c/Archie_MiSTer.git

Atari800
https://github.com/Miguel-T80c/Atari800_MiSTer.git

AtariST
https://github.com/Miguel-T80c/AtariST_MiSTer.git

C16
https://github.com/Miguel-T80c/C16_Mister.git

C64
https://github.com/Miguel-T80c/C64_MiSTer.git

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

TSConf
https://github.com/Miguel-T80c/TSConf_MiSTer.git

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
