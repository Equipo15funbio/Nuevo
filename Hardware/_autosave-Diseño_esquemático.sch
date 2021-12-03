EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Esquemático"
Date "jeu. 02 avril 2015"
Rev "Grupo 15"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8700 1100 0    60   ~ 0
1(Tx)
Text Label 8700 1200 0    60   ~ 0
0(Rx)
Text Label 8700 1300 0    60   ~ 0
Reset
Text Label 8700 1500 0    60   ~ 0
2
Text Label 8700 1600 0    60   ~ 0
3(**)
Text Label 8700 1700 0    60   ~ 0
4
Text Label 8700 1800 0    60   ~ 0
5(**)
Text Label 8700 1900 0    60   ~ 0
6(**)
Text Label 8700 2000 0    60   ~ 0
7
Text Label 8700 2100 0    60   ~ 0
8
Text Label 8700 2200 0    60   ~ 0
9(**)
Text Label 8700 2300 0    60   ~ 0
10(**/SS)
Text Label 8700 2400 0    60   ~ 0
11(**/MOSI)
Text Label 8700 2500 0    60   ~ 0
12(MISO)
Text Label 10550 2500 0    60   ~ 0
13(SCK)
Text Label 10550 2200 0    60   ~ 0
A0
Text Label 10550 2100 0    60   ~ 0
A1
Text Label 10550 2000 0    60   ~ 0
A2
Text Label 10550 1900 0    60   ~ 0
A3
Text Label 10550 1800 0    60   ~ 0
A4
Text Label 10550 1700 0    60   ~ 0
A5
Text Label 10550 1600 0    60   ~ 0
A6
Text Label 10550 1500 0    60   ~ 0
A7
Text Label 10550 2300 0    60   ~ 0
AREF
Text Label 10550 1300 0    60   ~ 0
Reset
Text Notes 10800 1000 0    60   ~ 0
Holes
Text Notes 8500 575  0    60   ~ 0
Shield for Arduino Nano
Text Label 10250 950  1    60   ~ 0
Vin
Wire Notes Line
	8475 650  9675 650 
Wire Notes Line
	9675 650  9675 475 
$Comp
L Connector_Generic:Conn_01x01 P3
U 1 1 56D73ADD
P 10800 650
F 0 "P3" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Nano:1pin_Nano" H 10800 650 50  0001 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
$Comp
L Connector_Generic:Conn_01x01 P4
U 1 1 56D73D86
P 10900 650
F 0 "P4" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Nano:1pin_Nano" H 10900 650 50  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D73DAE
P 11000 650
F 0 "P5" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Nano:1pin_Nano" H 11000 650 50  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D73DD9
P 11100 650
F 0 "P6" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Nano:1pin_Nano" H 11100 650 50  0001 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x15 P1
U 1 1 56D73FAC
P 9550 1800
F 0 "P1" H 9550 2600 50  0000 C CNN
F 1 "Digital" V 9650 1800 50  0000 C CNN
F 2 "Socket_Arduino_Nano:Socket_Strip_Arduino_1x15" H 9550 1800 50  0001 C CNN
F 3 "" H 9550 1800 50  0000 C CNN
	1    9550 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x15 P2
U 1 1 56D740C7
P 9950 1800
F 0 "P2" H 9950 2600 50  0000 C CNN
F 1 "Analog" V 10050 1800 50  0000 C CNN
F 2 "Socket_Arduino_Nano:Socket_Strip_Arduino_1x15" H 9950 1800 50  0001 C CNN
F 3 "" H 9950 1800 50  0000 C CNN
	1    9950 1800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 56D7422C
P 9250 2600
F 0 "#PWR01" H 9250 2350 50  0001 C CNN
F 1 "GND" H 9250 2450 50  0000 C CNN
F 2 "" H 9250 2600 50  0000 C CNN
F 3 "" H 9250 2600 50  0000 C CNN
	1    9250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1400 9250 1400
Wire Wire Line
	9250 1400 9250 2600
Wire Wire Line
	9350 1100 8700 1100
Wire Wire Line
	8700 1200 9350 1200
Wire Wire Line
	9350 1300 8700 1300
Wire Wire Line
	8700 1500 9350 1500
Wire Wire Line
	9350 1600 8700 1600
Wire Wire Line
	8700 1700 9350 1700
Wire Wire Line
	9350 1800 8700 1800
Wire Wire Line
	8700 1900 9350 1900
Wire Wire Line
	9350 2000 8700 2000
Wire Wire Line
	8700 2100 9350 2100
Wire Wire Line
	9350 2200 8700 2200
Wire Wire Line
	8700 2300 9350 2300
Wire Wire Line
	9350 2400 8700 2400
Wire Wire Line
	8700 2500 9350 2500
$Comp
L power:GND #PWR02
U 1 1 56D746ED
P 10250 2600
F 0 "#PWR02" H 10250 2350 50  0001 C CNN
F 1 "GND" H 10250 2450 50  0000 C CNN
F 2 "" H 10250 2600 50  0000 C CNN
F 3 "" H 10250 2600 50  0000 C CNN
	1    10250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2600 10250 1200
Wire Wire Line
	10250 1200 10150 1200
Wire Wire Line
	10150 1100 10250 1100
Wire Wire Line
	10250 1100 10250 950 
$Comp
L power:+5V #PWR03
U 1 1 56D747E8
P 10350 950
F 0 "#PWR03" H 10350 800 50  0001 C CNN
F 1 "+5V" V 10350 1150 28  0000 C CNN
F 2 "" H 10350 950 50  0000 C CNN
F 3 "" H 10350 950 50  0000 C CNN
	1    10350 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 950  10350 1400
Wire Wire Line
	10350 1400 10150 1400
$Comp
L power:+3V3 #PWR04
U 1 1 56D74854
P 10450 950
F 0 "#PWR04" H 10450 800 50  0001 C CNN
F 1 "+3.3V" V 10450 1150 28  0000 C CNN
F 2 "" H 10450 950 50  0000 C CNN
F 3 "" H 10450 950 50  0000 C CNN
	1    10450 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 950  10450 2400
Wire Wire Line
	10450 2400 10150 2400
Wire Wire Line
	10550 1300 10150 1300
Wire Wire Line
	10150 1500 10550 1500
Wire Wire Line
	10550 1600 10150 1600
Wire Wire Line
	10550 1700 10150 1700
Wire Wire Line
	10150 1800 10550 1800
Wire Wire Line
	10550 1900 10150 1900
Wire Wire Line
	10550 2000 10150 2000
Wire Wire Line
	10150 2100 10550 2100
Wire Wire Line
	10550 2200 10150 2200
Wire Wire Line
	10550 2300 10150 2300
Wire Wire Line
	10150 2500 10550 2500
Wire Notes Line
	11200 1050 10650 1050
Wire Notes Line
	10650 1050 10650 500 
Wire Notes Line
	11200 2850 8450 2850
Wire Notes Line
	8450 2850 8450 500 
Text Notes 9650 1100 0    60   ~ 0
1
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 618F11F3
P 5100 2850
F 0 "A?" H 4950 1850 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 4750 2000 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5100 2850 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5100 2850 50  0001 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR?
U 1 1 618F26D8
P 5750 1450
F 0 "#PWR?" H 5750 1300 50  0001 C CNN
F 1 "+9V" H 5765 1623 50  0000 C CNN
F 2 "" H 5750 1450 50  0001 C CNN
F 3 "" H 5750 1450 50  0001 C CNN
	1    5750 1450
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Linear:LM7805_TO220 U?
U 1 1 61916948
P 6050 1450
F 0 "U?" H 6050 1692 50  0000 C CNN
F 1 "LM7805_TO220" H 6050 1601 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6050 1675 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 6050 1400 50  0001 C CNN
	1    6050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3900 5200 3850
Wire Wire Line
	5200 1850 5200 1150
$Comp
L Connector:Conn_01x13_Male J?
U 1 1 618F2818
P 4400 2950
F 0 "J?" H 4508 3731 50  0000 C CNN
F 1 "Conn_01x13_Male" H 4200 3650 50  0000 C CNN
F 2 "" H 4400 2950 50  0001 C CNN
F 3 "~" H 4400 2950 50  0001 C CNN
	1    4400 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 61955EB3
P 5100 5050
F 0 "D?" H 5093 5267 50  0000 C CNN
F 1 "LED" H 5093 5176 50  0000 C CNN
F 2 "" H 5100 5050 50  0001 C CNN
F 3 "~" H 5100 5050 50  0001 C CNN
	1    5100 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 619571BD
P 5100 4700
F 0 "D?" H 5093 4917 50  0000 C CNN
F 1 "LED" H 5093 4826 50  0000 C CNN
F 2 "" H 5100 4700 50  0001 C CNN
F 3 "~" H 5100 4700 50  0001 C CNN
	1    5100 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 619587B6
P 5100 4350
F 0 "D?" H 5093 4567 50  0000 C CNN
F 1 "LED" H 5093 4476 50  0000 C CNN
F 2 "" H 5100 4350 50  0001 C CNN
F 3 "~" H 5100 4350 50  0001 C CNN
	1    5100 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 61982327
P 5400 4350
F 0 "R?" V 5195 4350 50  0000 C CNN
F 1 "R_US" V 5286 4350 50  0000 C CNN
F 2 "" V 5440 4340 50  0001 C CNN
F 3 "~" H 5400 4350 50  0001 C CNN
	1    5400 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 4350 4950 4350
Wire Wire Line
	4250 4700 4950 4700
Wire Wire Line
	4200 5050 4950 5050
$Comp
L Device:R_US R?
U 1 1 619948D0
P 5400 4700
F 0 "R?" V 5195 4700 50  0000 C CNN
F 1 "R_US" V 5286 4700 50  0000 C CNN
F 2 "" V 5440 4690 50  0001 C CNN
F 3 "~" H 5400 4700 50  0001 C CNN
	1    5400 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 6199526B
P 5400 5050
F 0 "R?" V 5195 5050 50  0000 C CNN
F 1 "R_US" V 5286 5050 50  0000 C CNN
F 2 "" V 5440 5040 50  0001 C CNN
F 3 "~" H 5400 5050 50  0001 C CNN
	1    5400 5050
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial_Power J?
U 1 1 619D64D8
P 6450 1450
F 0 "J?" V 6675 1400 50  0000 C CNN
F 1 "Conn_Coaxial_Power" V 6600 1150 50  0000 C CNN
F 2 "" H 6450 1400 50  0001 C CNN
F 3 "~" H 6450 1400 50  0001 C CNN
	1    6450 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 5050 7250 5050
Wire Wire Line
	5550 4700 7250 4700
Connection ~ 7250 4700
Wire Wire Line
	7250 4700 7250 5050
Wire Wire Line
	5550 4350 7250 4350
Wire Wire Line
	7250 4350 7250 4700
NoConn ~ 4600 2250
NoConn ~ 5600 2250
NoConn ~ 5600 2350
NoConn ~ 5600 2650
NoConn ~ 5600 2850
$Comp
L Device:LED D?
U 1 1 61989CC2
P 2500 3400
F 0 "D?" V 2447 3480 50  0000 L CNN
F 1 "LED" V 2538 3480 50  0000 L CNN
F 2 "" H 2500 3400 50  0001 C CNN
F 3 "~" H 2500 3400 50  0001 C CNN
	1    2500 3400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 6198FA03
P 2750 3400
F 0 "D?" V 2697 3480 50  0000 L CNN
F 1 "LED" V 2788 3480 50  0000 L CNN
F 2 "" H 2750 3400 50  0001 C CNN
F 3 "~" H 2750 3400 50  0001 C CNN
	1    2750 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 3900 6000 3900
Wire Wire Line
	7250 4350 7250 4000
Wire Wire Line
	5100 4000 6550 4000
Connection ~ 7250 4350
Wire Wire Line
	4200 3050 4200 5050
Wire Wire Line
	4400 3050 4200 3050
Wire Wire Line
	4400 2750 4250 2750
Wire Wire Line
	4250 2750 4250 4700
Wire Wire Line
	4300 2550 4300 4350
Wire Wire Line
	4400 2550 4300 2550
Wire Wire Line
	5100 3850 5100 4000
Connection ~ 5100 4000
Wire Wire Line
	5000 1050 6650 1050
Wire Wire Line
	6650 1050 6650 1450
Wire Wire Line
	6000 3900 6000 1750
Wire Wire Line
	5000 1050 5000 1850
Wire Wire Line
	2300 4000 2300 2950
$Comp
L Switch:SW_Push_Open_Dual_x2 SW?
U 1 1 61AE1A2E
P 2300 2750
F 0 "SW?" V 2254 2828 50  0000 L CNN
F 1 "SW_Push_Open_Dual_x2" V 2345 2828 50  0000 L CNN
F 2 "" H 2300 2950 50  0001 C CNN
F 3 "~" H 2300 2950 50  0001 C CNN
	1    2300 2750
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_MEC_5G SW?
U 1 1 61AE3878
P 3850 1600
F 0 "SW?" V 3804 1748 50  0000 L CNN
F 1 "SW_MEC_5G" V 3895 1748 50  0000 L CNN
F 2 "" H 3850 1800 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3850 1800 50  0001 C CNN
	1    3850 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 3250 3850 3250
Wire Wire Line
	3850 3250 3850 1800
Wire Wire Line
	3850 3250 3850 3400
Connection ~ 3850 3250
Connection ~ 3850 4000
Wire Wire Line
	3850 4000 5100 4000
$Comp
L Device:R_US R?
U 1 1 61AEC136
P 3850 3550
F 0 "R?" H 3918 3596 50  0000 L CNN
F 1 "R_US" H 3918 3505 50  0000 L CNN
F 2 "" V 3890 3540 50  0001 C CNN
F 3 "~" H 3850 3550 50  0001 C CNN
	1    3850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3700 3850 4000
NoConn ~ 5600 3550
NoConn ~ 5600 3450
NoConn ~ 5600 3400
NoConn ~ 5600 3350
Wire Wire Line
	4400 2450 2300 2450
Wire Wire Line
	2300 2450 2300 2550
Wire Wire Line
	3850 1350 3850 1400
Wire Wire Line
	3850 1350 5300 1350
NoConn ~ 6000 4300
$Comp
L Display_Character:NHD-0420H1Z U?
U 1 1 61AABD05
P 7100 2750
F 0 "U?" H 7100 1861 50  0000 C CNN
F 1 "NHD-0420H1Z" H 7100 1770 50  0000 C CNN
F 2 "Display:NHD-0420H1Z" H 7100 1850 50  0001 C CNN
F 3 "http://www.newhavendisplay.com/specs/NHD-0420H1Z-FSW-GBW-33V3.pdf" H 7200 2650 50  0001 C CNN
	1    7100 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1350 5300 1800
Wire Wire Line
	6000 1750 6050 1750
Wire Wire Line
	7100 1950 5650 1950
Wire Wire Line
	5650 1950 5650 1800
Wire Wire Line
	5650 1800 5300 1800
Connection ~ 5300 1800
Wire Wire Line
	5300 1800 5300 1850
Wire Wire Line
	5600 2950 5850 2950
Wire Wire Line
	5850 2950 5850 2650
Wire Wire Line
	5850 2650 6700 2650
Wire Wire Line
	5600 3050 6050 3050
Wire Wire Line
	6050 3050 6050 2750
Wire Wire Line
	6050 2750 6700 2750
Wire Wire Line
	5600 3150 6100 3150
Wire Wire Line
	6100 3150 6100 2850
Wire Wire Line
	6100 2850 6700 2850
Wire Wire Line
	5600 3250 6150 3250
Wire Wire Line
	6150 3250 6150 2950
Wire Wire Line
	6150 2950 6700 2950
Wire Wire Line
	7100 3550 6550 3550
Wire Wire Line
	6550 3550 6550 4000
Connection ~ 6550 4000
Wire Wire Line
	6550 4000 7250 4000
Wire Wire Line
	6700 2150 6550 2150
Wire Wire Line
	6550 2150 6550 3550
Connection ~ 6550 3550
$Comp
L Sensor_Optical:APDS-9306-065 U?
U 1 1 61AC87AE
P 3250 4600
F 0 "U?" V 2861 4600 50  0000 C CNN
F 1 "APDS-9306-065" V 2770 4600 50  0000 C CNN
F 2 "OptoDevice:Broadcom_DFN-6_2x2mm_P0.65mm" H 3250 4100 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-4755EN" H 4000 4900 50  0001 C CNN
	1    3250 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 1150 5200 1150
Wire Wire Line
	1850 1150 1850 4500
$Comp
L Device:R_US R?
U 1 1 61ADDB80
P 2500 3700
F 0 "R?" H 2568 3746 50  0000 L CNN
F 1 "R_US" H 2568 3655 50  0000 L CNN
F 2 "" V 2540 3690 50  0001 C CNN
F 3 "~" H 2500 3700 50  0001 C CNN
	1    2500 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 61AE1650
P 2750 3700
F 0 "R?" H 2818 3746 50  0000 L CNN
F 1 "R_US" H 2818 3655 50  0000 L CNN
F 2 "" V 2790 3690 50  0001 C CNN
F 3 "~" H 2750 3700 50  0001 C CNN
	1    2750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2850 2500 3250
Wire Wire Line
	2500 2850 4400 2850
Wire Wire Line
	2750 2950 2750 3250
Wire Wire Line
	2750 2950 4400 2950
Wire Wire Line
	2300 4000 2500 4000
Wire Wire Line
	2500 3850 2500 4000
Connection ~ 2500 4000
Wire Wire Line
	2500 4000 2750 4000
Wire Wire Line
	2750 3850 2750 4000
Connection ~ 2750 4000
Wire Wire Line
	2750 4000 3850 4000
Wire Wire Line
	1850 4500 2950 4500
Wire Wire Line
	4450 3350 3150 3350
Wire Wire Line
	3150 3350 3150 4200
Wire Wire Line
	4400 3450 3250 3450
Wire Wire Line
	3250 3450 3250 4200
Wire Wire Line
	4450 3550 4150 3550
Wire Wire Line
	4150 3550 4150 4200
Wire Wire Line
	4150 4200 3350 4200
Wire Wire Line
	3550 4500 3950 4500
Wire Wire Line
	3950 4500 3950 5300
Wire Wire Line
	3950 5300 7250 5300
Wire Wire Line
	7250 5300 7250 5050
Connection ~ 7250 5050
$EndSCHEMATC
