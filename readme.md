  Core repositories here:
https://github.com/MiSTer-DB9?tab=repositories

  Script for download:
https://github.com/theypsilon/Update_All_MiSTer/releases/latest/download/update_all_db9_snac8.zip

| USER_IO | DE10         | DB9 | FPGA  | USB3
| ------- | ------------ | --- | ----- | --------
|         |              | 8   |       | 4 GND  
|         |              | 5   |       | 1 5V   
| 0       | Arduino_IO15 | 7   | AG11  | 3 D+   
| 1       | Arduino_IO14 | 3   | AH9   | 2 D-   
| 2       | Arduino_IO13 | 4   | AH12  | 8 TX-  
| 3       | Arduino_IO12 | 6   | AH11  | 7 GND_D
| 4       | Arduino_IO11 | shield | AG16  | 6 RX+  
| 5       | Arduino_IO10 | 1   | AF15  | 5 RX-  
| 6       | Arduino_IO8  | 9   | AF17  | 9 TX+  
|         | Arduino_IO9  | 2   | AE15  |        

9 TX+ is AF17 on SNAC+, with regular SNAC is 3.3V

The second user IO is from Arduino_IO0 to Arduino_IO7 like this diagram.

![Second USER IO](photos/SecondUserIO.png?raw=true "splitters")

![splitters](photos/splitters.jpg?raw=true "splitters")

| Genesis | SNES Option 1
| ------- | ------------
| A       | Y
| B       | B
| C       | A
| X       | L
| Y       | X
| Z       | R
| START   | START
| MODE    | SELECT

| Genesis | SNES Option 2
| ------- | ------------
| A       | B
| B       | A
| C       | R
| X       | Y
| Y       | X
| Z       | L
| START   | START
| MODE    | SELECT


| Genesis | GBA Option 1
| ------- | ------------
| A       | B
| B       | A
| C       | R
| X       | FAST FORWARD
| Y       | L
| Z       | REWIND
| START   | START
| MODE    | SELECT

| Genesis | GBA Option 2
| ------- | ------------
| A       | B
| B       | A
| C       | R
| X       | FAST FORWARD
| Y       | REWIND
| Z       | L
| START   | START
| MODE    | SELECT


| Genesis | Neo Geo
| ------- | ------------
| A       | A
| B       | B
| C       | C
| X       | SELECT
| Y       | ABC
| Z       | D
| START   | START
| MODE    | COIN


| Genesis | NES Option 1
| ------- | ------------
| B       | B
| C       | A
| START   | START
| MODE    | SELECT

| Genesis | NES Option 2
| ------- | ------------
| B       | A
| C       | B
| START   | START
| MODE    | SELECT


| Genesis | Master System
| ------- | ------------
| B       | 1
| C       | 2
| START   | START/PAUSE


| Genesis | TurboGrafx
| ------- | ------------
| A       | III
| B       | II
| C       | I
| X       | IV
| Y       | V
| Z       | VI
| START   | RUN
| MODE    | SELECT


| Genesis | Atari 2600
| ------- | ------------
| B       | A
| START   | START
| MODE    | SELECT


| Genesis | GB/GBC
| ------- | ------------
| B       | A
| C       | B
| START   | START
| MODE    | SELECT
| A       | SELECT


| Genesis | Generic Arcade
| ------- | ------------
| A       | Button 1 (Fire)
| B       | Button 2 (Jump)
| C       | Button 3 
| X       | Button 4
| Y       | Button 5
| Z       | Button 6
| START   | START
| MODE    | COIN
| START+B | COIN
| START+C | OSD
