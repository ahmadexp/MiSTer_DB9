| USER_IO | DE10         | DB9 | FPGA  | USB3
| ------- | ------------ | --- | ----- | --------
|         |              | 8   |       | 4 GND  
|         |              | 5   |       | 1 5V   
| 0       | Arduino_IO15 | 7   | AG11  | 3 D+   
| 1       | Arduino_IO14 | 3   | AH9   | 2 D-   
| 2       | Arduino_IO13 | 4   | AH12  | 8 TX-  
| 3       | Arduino_IO12 | 6   | AH11  | 7 GND_D
| 4       | Arduino_IO11 | sh* | AG16  | 6 RX+  
| 5       | Arduino_IO10 | 1   | AF15  | 5 RX-  
| 6       | Arduino_IO8  | 9   | AF17* | 9 TX+  
|         | Arduino_IO9  | 2   | AE15  |        

sh* shield
AF17* on SNAC+, with regular SNAC is 3.3V

![SNES](photos/snes.jpg?raw=true "SNES")
![NeoGeo](photos/neogeo.jpg?raw=true "NeoGeo")
![Genesis](photos/genesis.jpg?raw=true "Genesis")

``Genesis - SNES (Option 1)
A - Y
B - B
C - A
X - L
Y - X
Z - R
START - START
MODE - SELECT

Genesis - SNES (Option 2)
A - B
B - A
C - R
X - Y
Y - X
Z - L
START - START
MODE - SELECT

Genesis - GAMEBOY ADVANCE (Option 1)
A - B
B - A
C - R
X - avance rápido
Y - rebobinado
Z - L
START - START
MODE - SELECT

Genesis - GAMEBOY ADVANCE (Option 2)
A - B
B - A
C - R
X - avance rápido
Y - L
Z - rebobinado
START - START
MODE - SELECT

Genesis - NEOGEO
A - A
B - B
C - C
X - SELECT
Y - ABC
Z - D
START - START
MODE - COIN

Genesis - NES
B - A
C - B
START - START
MODE - SELECT

Genesis - MASTER SYTEM
B - 1
C - 2
START - START/PAUSE (En un futuro)

Genesis - TURBOGRAFX
A - III
B - II
C - I
X - IV
Y - V
Z - VI
START - RUN
MODE - SELECT

Genesis - ATARI 2600
B - A
START - START GAME
MODE - SELECT GAME

Genesis - GAMEBOY/GAMEBOY COLOR (In a future)
B - A
C - B
START - START
MODE - SELECT``
