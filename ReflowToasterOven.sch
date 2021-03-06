EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ReflowToasterOven-cache
LIBS:ReflowToasterOven-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "22 mar 2018"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
Temp_Out
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
Buzzer
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
Lite
Text Label 10550 2600 0    60   ~ 0
Switch3
Text Label 10550 2500 0    60   ~ 0
Switch2
Text Label 10550 2400 0    60   ~ 0
Switch1
Text Label 10550 2300 0    60   ~ 0
Relay_Ctrl
Text Label 10550 2100 0    60   ~ 0
D/C
Text Label 10550 2000 0    60   ~ 0
TFT_Reset
Text Label 10550 1900 0    60   ~ 0
TFT_CS
Text Label 10550 1800 0    60   ~ 0
MOSI
Text Label 10550 1700 0    60   ~ 0
MISO
Text Label 10550 1600 0    60   ~ 0
SCK
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L CONN_01X08 P1
U 1 1 56D70129
P 9600 1950
F 0 "P1" H 9600 2400 50  0000 C CNN
F 1 "Power" V 9700 1950 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1950 20  0000 C CNN
F 3 "" H 9600 1950 50  0000 C CNN
	1    9600 1950
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L +3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" H 9150 1590 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" H 9050 1490 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P2
U 1 1 56D70DD8
P 9600 2750
F 0 "P2" H 9600 3100 50  0000 C CNN
F 1 "Analog" V 9700 2750 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2800 20  0000 C CNN
F 3 "" H 9600 2750 50  0000 C CNN
	1    9600 2750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L CONN_01X08 P4
U 1 1 56D7164F
P 10000 2650
F 0 "P4" H 10000 3100 50  0000 C CNN
F 1 "Digital" V 10100 2650 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2600 20  0000 C CNN
F 3 "" H 10000 2650 50  0000 C CNN
	1    10000 2650
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X10 P3
U 1 1 56D721E0
P 10000 1650
F 0 "P3" H 10000 2200 50  0000 C CNN
F 1 "Digital" V 10100 1650 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1650 20  0000 C CNN
F 3 "" H 10000 1650 50  0000 C CNN
	1    10000 1650
	-1   0    0    -1  
$EndComp
Text Notes 9700 1600 0    60   ~ 0
1
$Comp
L AD595AQ U1
U 1 1 5AABD1F3
P 2950 5100
F 0 "U1" H 3000 5400 60  0000 C CNN
F 1 "AD595AQ" H 3000 4650 60  0000 C CNN
F 2 "" H 2950 5100 60  0000 C CNN
F 3 "" H 2950 5100 60  0000 C CNN
F 4 "584-AD595AQ" H 2950 5100 60  0001 C CNN "Mouser Part Number"
	1    2950 5100
	1    0    0    -1  
$EndComp
$Comp
L 160X128_TFT_DISPLAY LCD1
U 1 1 5AABD432
P 2850 1700
F 0 "LCD1" H 2950 2100 60  0000 C CNN
F 1 "160X128_TFT_DISPLAY" H 2900 1100 60  0000 C CNN
F 2 "" H 2850 1700 60  0000 C CNN
F 3 "" H 2850 1700 60  0000 C CNN
F 4 "855-M20-9771046" H 2850 1700 60  0001 C CNN "Mouser Part Number"
	1    2850 1700
	-1   0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 5AABD4DC
P 1550 3200
F 0 "SW1" H 1700 3310 50  0000 C CNN
F 1 "Reset" H 1550 3120 50  0000 C CNN
F 2 "~" H 1550 3200 60  0000 C CNN
F 3 "~" H 1550 3200 60  0000 C CNN
	1    1550 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5AABD530
P 1250 3950
F 0 "#PWR05" H 1250 3950 30  0001 C CNN
F 1 "GND" H 1250 3880 30  0001 C CNN
F 2 "" H 1250 3950 60  0000 C CNN
F 3 "" H 1250 3950 60  0000 C CNN
	1    1250 3950
	1    0    0    -1  
$EndComp
Text Label 1850 3200 0    60   ~ 0
Reset
$Comp
L CONN_4 P10
U 1 1 5AABD632
P 2750 2800
F 0 "P10" V 2700 2800 50  0000 C CNN
F 1 "Switches" V 2800 2800 50  0000 C CNN
F 2 "~" H 2750 2800 60  0000 C CNN
F 3 "~" H 2750 2800 60  0000 C CNN
F 4 "855-M20-9730446" V 2750 2800 60  0001 C CNN "Mouser Part Number"
	1    2750 2800
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5AABD653
P 3100 3050
F 0 "#PWR06" H 3100 3050 30  0001 C CNN
F 1 "GND" H 3100 2980 30  0001 C CNN
F 2 "" H 3100 3050 60  0000 C CNN
F 3 "" H 3100 3050 60  0000 C CNN
	1    3100 3050
	1    0    0    -1  
$EndComp
Text Label 3250 1250 0    60   ~ 0
Lite
Text Label 3250 1350 0    60   ~ 0
MISO
Text Label 3250 1450 0    60   ~ 0
SCK
Text Label 3250 1550 0    60   ~ 0
MOSI
Text Label 3250 1650 0    60   ~ 0
TFT_CS
Text Label 3250 1850 0    60   ~ 0
D/C
Text Label 3250 1950 0    60   ~ 0
TFT_Reset
$Comp
L +5V #PWR07
U 1 1 5AABD7B1
P 3250 2050
F 0 "#PWR07" H 3250 2140 20  0001 C CNN
F 1 "+5V" H 3250 2140 30  0000 C CNN
F 2 "" H 3250 2050 60  0000 C CNN
F 3 "" H 3250 2050 60  0000 C CNN
	1    3250 2050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5AABD7CF
P 3250 2150
F 0 "#PWR08" H 3250 2150 30  0001 C CNN
F 1 "GND" H 3250 2080 30  0001 C CNN
F 2 "" H 3250 2150 60  0000 C CNN
F 3 "" H 3250 2150 60  0000 C CNN
	1    3250 2150
	0    -1   -1   0   
$EndComp
Text Label 3100 2650 0    60   ~ 0
Switch1
Text Label 3100 2750 0    60   ~ 0
Switch2
Text Label 3100 2850 0    60   ~ 0
Switch3
$Comp
L +3.3V #PWR09
U 1 1 5AABD851
P 6050 1150
F 0 "#PWR09" H 6050 1110 30  0001 C CNN
F 1 "+3.3V" H 6050 1260 30  0000 C CNN
F 2 "" H 6050 1150 60  0000 C CNN
F 3 "" H 6050 1150 60  0000 C CNN
	1    6050 1150
	1    0    0    -1  
$EndComp
Text Label 6050 1300 0    60   ~ 0
AREF
$Comp
L +5V #PWR010
U 1 1 5AABD8A1
P 3350 4600
F 0 "#PWR010" H 3350 4690 20  0001 C CNN
F 1 "+5V" H 3350 4690 30  0000 C CNN
F 2 "" H 3350 4600 60  0000 C CNN
F 3 "" H 3350 4600 60  0000 C CNN
	1    3350 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5AABD8B0
P 3350 5600
F 0 "#PWR011" H 3350 5600 30  0001 C CNN
F 1 "GND" H 3350 5530 30  0001 C CNN
F 2 "" H 3350 5600 60  0000 C CNN
F 3 "" H 3350 5600 60  0000 C CNN
	1    3350 5600
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5AABD8BF
P 3650 4750
F 0 "C1" H 3650 4850 40  0000 L CNN
F 1 ".1 uF" H 3656 4665 40  0000 L CNN
F 2 "~" H 3688 4600 30  0000 C CNN
F 3 "~" H 3650 4750 60  0000 C CNN
F 4 "21RZ310-RC" H 3650 4750 60  0001 C CNN "Mouser Part Number"
	1    3650 4750
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 T1
U 1 1 5AABD8D5
P 2050 4750
F 0 "T1" V 2000 4750 40  0000 C CNN
F 1 "Thermocouple" V 2100 4750 40  0000 C CNN
F 2 "~" H 2050 4750 60  0000 C CNN
F 3 "~" H 2050 4750 60  0000 C CNN
F 4 "649-220316-H021B01LF" V 2050 4750 60  0001 C CNN "Mouser Part Number"
	1    2050 4750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5AABDA40
P 3950 4750
F 0 "#PWR012" H 3950 4750 30  0001 C CNN
F 1 "GND" H 3950 4680 30  0001 C CNN
F 2 "" H 3950 4750 60  0000 C CNN
F 3 "" H 3950 4750 60  0000 C CNN
	1    3950 4750
	0    -1   -1   0   
$EndComp
Text Label 3750 4900 0    60   ~ 0
Temp_Out
$Comp
L CONN_2 T2
U 1 1 5AABDBC7
P 3900 3550
F 0 "T2" V 3850 3550 40  0000 C CNN
F 1 "Relay" V 3950 3550 40  0000 C CNN
F 2 "~" H 3900 3550 60  0000 C CNN
F 3 "~" H 3900 3550 60  0000 C CNN
F 4 "649-220316-H021B01LF" V 3900 3550 60  0001 C CNN "Mouser Part Number"
	1    3900 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5AABDBDB
P 3550 3750
F 0 "#PWR013" H 3550 3750 30  0001 C CNN
F 1 "GND" H 3550 3680 30  0001 C CNN
F 2 "" H 3550 3750 60  0000 C CNN
F 3 "" H 3550 3750 60  0000 C CNN
	1    3550 3750
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5AABDC2E
P 3250 3700
F 0 "R2" V 3330 3700 40  0000 C CNN
F 1 "10K Ohms" V 3257 3701 40  0000 C CNN
F 2 "~" V 3180 3700 30  0000 C CNN
F 3 "~" H 3250 3700 30  0000 C CNN
F 4 "660-MS1/4DCT52R1002" V 3250 3700 60  0001 C CNN "Mouser Part Number"
	1    3250 3700
	1    0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
Wire Wire Line
	1250 3200 1250 3950
Wire Wire Line
	3100 2950 3100 3050
Wire Wire Line
	6050 1150 6050 1300
Wire Wire Line
	2400 4850 2600 4850
Wire Wire Line
	2400 4650 2400 4750
Wire Wire Line
	2400 4750 2600 4750
Wire Wire Line
	3300 4750 3450 4750
Wire Wire Line
	3350 4600 3350 4750
Connection ~ 3350 4750
Wire Wire Line
	3300 5400 3350 5400
Wire Wire Line
	3350 5150 3350 5600
Wire Wire Line
	3850 4750 3950 4750
Wire Wire Line
	3300 5150 3350 5150
Connection ~ 3350 5400
Wire Wire Line
	3300 5250 3350 5250
Connection ~ 3350 5250
Wire Wire Line
	3300 4900 3750 4900
Wire Wire Line
	3550 4900 3550 5800
Wire Wire Line
	3550 5800 2500 5800
Wire Wire Line
	2500 5800 2500 5450
Wire Wire Line
	2500 5450 2600 5450
Connection ~ 3550 4900
Wire Wire Line
	3550 3650 3550 3750
Wire Wire Line
	3000 3450 3550 3450
Connection ~ 3250 3450
$Comp
L GND #PWR014
U 1 1 5AABDD26
P 3250 4050
F 0 "#PWR014" H 3250 4050 30  0001 C CNN
F 1 "GND" H 3250 3980 30  0001 C CNN
F 2 "" H 3250 4050 60  0000 C CNN
F 3 "" H 3250 4050 60  0000 C CNN
	1    3250 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3950 3250 4050
Text Label 3000 3450 2    60   ~ 0
Relay_Ctrl
$Comp
L CONN_2 T3
U 1 1 5AABDD7C
P 4800 2550
F 0 "T3" V 4750 2550 40  0000 C CNN
F 1 "FAN" V 4850 2550 40  0000 C CNN
F 2 "~" H 4800 2550 60  0000 C CNN
F 3 "~" H 4800 2550 60  0000 C CNN
F 4 "649-220316-H021B01LF" V 4800 2550 60  0001 C CNN "Mouser Part Number"
	1    4800 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5AABDD90
P 4450 2750
F 0 "#PWR015" H 4450 2750 30  0001 C CNN
F 1 "GND" H 4450 2680 30  0001 C CNN
F 2 "" H 4450 2750 60  0000 C CNN
F 3 "" H 4450 2750 60  0000 C CNN
	1    4450 2750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR016
U 1 1 5AABDD9F
P 4450 2350
F 0 "#PWR016" H 4450 2440 20  0001 C CNN
F 1 "+5V" H 4450 2440 30  0000 C CNN
F 2 "" H 4450 2350 60  0000 C CNN
F 3 "" H 4450 2350 60  0000 C CNN
	1    4450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2350 4450 2450
Wire Wire Line
	4450 2650 4450 2750
$Comp
L CP1 C2
U 1 1 5AABDE3F
P 4150 2550
F 0 "C2" H 4200 2650 50  0000 L CNN
F 1 "47 uF" H 4200 2450 50  0000 L CNN
F 2 "C1V6.3" H 4150 2550 60  0001 C CNN
F 3 "~" H 4150 2550 60  0000 C CNN
F 4 "140-REA470M1HBK0611P" H 4150 2550 60  0001 C CNN "Mouser Part Number"
	1    4150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2350 4400 2350
Wire Wire Line
	4400 2350 4400 2450
Wire Wire Line
	4400 2450 4450 2450
Wire Wire Line
	4150 2750 4350 2750
Wire Wire Line
	4350 2750 4350 2650
Wire Wire Line
	4350 2650 4450 2650
$Comp
L CONN_2 P9
U 1 1 5AB420C6
P 2000 3850
F 0 "P9" V 1950 3850 40  0000 C CNN
F 1 "Buzzer" V 2050 3850 40  0000 C CNN
F 2 "~" H 2000 3850 60  0000 C CNN
F 3 "~" H 2000 3850 60  0000 C CNN
	1    2000 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5AB420E1
P 1650 3950
F 0 "#PWR017" H 1650 3950 30  0001 C CNN
F 1 "GND" H 1650 3880 30  0001 C CNN
F 2 "" H 1650 3950 60  0000 C CNN
F 3 "" H 1650 3950 60  0000 C CNN
	1    1650 3950
	0    1    1    0   
$EndComp
Text Label 1650 3750 2    60   ~ 0
Buzzer
$EndSCHEMATC
