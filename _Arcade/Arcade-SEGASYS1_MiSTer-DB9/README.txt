---------------------------------------------------------------------------------
-- 
-- Arcade: SEGA System 1  for MiSTer by MiSTer-X
-- 07 January 2020
-- 
---------------------------------------------------------------------------------
-- T80/T80s - Version : 0242
--------------------------------
-- Z80 compatible microprocessor core
-- Copyright (c) 2001-2002 Daniel Wallner (jesus@opencores.org)
---------------------------------------------------------------------------------
--
-- Keyboard inputs :
--
--   F2          : Coin + Start 2 players
--   F1          : Coin + Start 1 player
--   UP,DOWN,LEFT,RIGHT arrows : Movements
--   SPACE       : Trig1
--   CTRL        : Trig2
--   ALT         : Trig3
--
-- MAME/IPAC/JPAC Style Keyboard inputs:
--   5           : Coin 1
--   6           : Coin 2
--   1           : Start 1 Player
--   2           : Start 2 Players
--   R,F,D,G     : Player 2 Movements
--   A           : Player 2 Trig1
--   S           : Player 2 Trig2
--   Q           : Player 2 Trig3
--
-- Joystick support.
--
-- DB9 Six Button Control Pad (Mega Drive) inputs:
--   Joypad Button A      : Trig3
--   Joypad Button B      : Trig1
--   Joypad Button C      : Trig2
--   Joypad Button Start  : Start 1 player
--   Joypad Button Mode   : Coin
--   Joypad Button Z  	  : Start 2 players
--   UP,DOWN,LEFT,RIGHT   : Movements
--
---------------------------------------------------------------------------------
-- 2020/01/08  Impl. Trigger 3  (for SEGA Ninja)
---------------------------------------------------------------------------------

                                *** Attention ***

ROM is not included. In order to use this arcade, you need to provide a correct ROM file.

Find this zip file somewhere. You need to find the file exactly as required.
Do not rename other zip files even if they also represent the same game - they are not compatible!
The name of zip is taken from M.A.M.E. project, so you can get more info about
hashes and contained files there.


How to install:
  0. Update MiSTer binary to v200106 or later
  1. copy releases/*.mra to /media/fat/_Arcade
  2. copy releases/*.rbf to /media/fat/_Arcade/cores
  3. copy ROM zip files  to /media/fat/_Arcade/mame


Be sure to use the MRA file in "releases" of this repository.
It does not guarantee the operation when using other MRA files.

-------------------GAMES------------------

4D Warriors (1985)
Bullfight (1984)
Flicky (1984)
I'm Sorry (1985)
Mister Viking (1984)
My Hero (1985)
Pitfall II (1985)
Rafflesia (1986)
Regulus (1983)
Sega Ninja (1985)
Spatter (1984)
Star Jacker (1983)
SWAT (1984)
Teddy Boy Blues (1985)
Up'n Down (1983)
Water Match (1984)
Wonder Boy (1986)
Gonbee no I'm Sorry (315-5110, Japan)
Ninja Princess (315-5098, 128k Ver.)
Sanrin San Chan (Japan, 315-5xxx)
Seishun Scandal (315-5132, Japan)

-------------------

Super Locomotive (prototype hardware) (1982)
Choplifter (1985)
Brain (1986)
Gardia (1986)
Noboranka (1986)
Wonder Boy Deluxe (1986)
Block Gal (1987)

