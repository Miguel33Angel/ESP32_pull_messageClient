EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R1
U 1 1 616DF099
P 7150 2800
F 0 "R1" H 7220 2846 50  0000 L CNN
F 1 "2k" H 7220 2755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7080 2800 50  0001 C CNN
F 3 "~" H 7150 2800 50  0001 C CNN
	1    7150 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 616E1A26
P 7150 2300
F 0 "R2" H 7220 2346 50  0000 L CNN
F 1 "9K" H 7220 2255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7080 2300 50  0001 C CNN
F 3 "~" H 7150 2300 50  0001 C CNN
	1    7150 2300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 616EA4F7
P 7150 2950
F 0 "#PWR0101" H 7150 2700 50  0001 C CNN
F 1 "GND" H 7155 2777 50  0000 C CNN
F 2 "" H 7150 2950 50  0001 C CNN
F 3 "" H 7150 2950 50  0001 C CNN
	1    7150 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 616EABB2
P 7150 2150
F 0 "#PWR0102" H 7150 2000 50  0001 C CNN
F 1 "+5V" H 7165 2323 50  0000 C CNN
F 2 "" H 7150 2150 50  0001 C CNN
F 3 "" H 7150 2150 50  0001 C CNN
	1    7150 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 616EBA0E
P 6050 2250
F 0 "#PWR0103" H 6050 2100 50  0001 C CNN
F 1 "+5V" H 6065 2423 50  0000 C CNN
F 2 "" H 6050 2250 50  0001 C CNN
F 3 "" H 6050 2250 50  0001 C CNN
	1    6050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2250 6050 2350
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 616F99D6
P 3350 2100
F 0 "J1" H 3430 2092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 3430 2001 50  0000 L CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 3350 2100 50  0001 C CNN
F 3 "~" H 3350 2100 50  0001 C CNN
	1    3350 2100
	-1   0    0    1   
$EndComp
Text Label 6550 2550 0    50   ~ 0
Vo
$Comp
L power:+5V #PWR0104
U 1 1 617086B0
P 6500 2750
F 0 "#PWR0104" H 6500 2600 50  0001 C CNN
F 1 "+5V" H 6600 2850 50  0000 C CNN
F 2 "" H 6500 2750 50  0001 C CNN
F 3 "" H 6500 2750 50  0001 C CNN
	1    6500 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 617090E7
P 6550 3350
F 0 "#PWR0105" H 6550 3100 50  0001 C CNN
F 1 "GND" H 6555 3177 50  0000 C CNN
F 2 "" H 6550 3350 50  0001 C CNN
F 3 "" H 6550 3350 50  0001 C CNN
	1    6550 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3350 6550 3250
$Comp
L Device:R R3
U 1 1 61709D25
P 6650 2950
F 0 "R3" H 6720 2996 50  0000 L CNN
F 1 "220" H 6720 2905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6580 2950 50  0001 C CNN
F 3 "~" H 6650 2950 50  0001 C CNN
	1    6650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2450 7150 2550
Connection ~ 7150 2550
Wire Wire Line
	7150 2550 7150 2650
Wire Wire Line
	6650 2800 6650 2750
Wire Wire Line
	6650 2750 6500 2750
Wire Wire Line
	6650 3100 6650 3150
$Comp
L power:GND #PWR0106
U 1 1 61710C33
P 6050 4100
F 0 "#PWR0106" H 6050 3850 50  0001 C CNN
F 1 "GND" H 6055 3927 50  0000 C CNN
F 2 "" H 6050 4100 50  0001 C CNN
F 3 "" H 6050 4100 50  0001 C CNN
	1    6050 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3250 6450 3250
Wire Wire Line
	6650 3150 6450 3150
Wire Wire Line
	6450 2550 7150 2550
$Comp
L Display_Character:HY1602E DS1
U 1 1 616E73A8
P 6050 3150
F 0 "DS1" H 6200 3900 50  0000 C CNN
F 1 "HY1602E" H 5800 3900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 6050 2250 50  0001 C CIN
F 3 "http://www.icbank.com/data/ICBShop/board/HY1602E.pdf" H 6250 3250 50  0001 C CNN
	1    6050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3950 6050 4100
Wire Wire Line
	5650 2550 5450 2550
Text Label 5450 2550 0    50   ~ 0
E
Text Label 9850 2550 0    50   ~ 0
E
Text Label 9850 2350 0    50   ~ 0
RS
Text Label 9850 3350 0    50   ~ 0
D4
Text Label 9850 3450 0    50   ~ 0
D5
Text Label 9850 3550 0    50   ~ 0
D6
Text Label 9850 3650 0    50   ~ 0
D7
Wire Wire Line
	9650 2250 10150 2250
Wire Wire Line
	10150 2250 10150 2150
$Comp
L power:+5V #PWR0108
U 1 1 6171D05E
P 10150 2150
F 0 "#PWR0108" H 10150 2000 50  0001 C CNN
F 1 "+5V" H 10165 2323 50  0000 C CNN
F 2 "" H 10150 2150 50  0001 C CNN
F 3 "" H 10150 2150 50  0001 C CNN
	1    10150 2150
	1    0    0    -1  
$EndComp
NoConn ~ 9700 2650
$Comp
L power:GND #PWR0109
U 1 1 6171E60D
P 10150 2800
F 0 "#PWR0109" H 10150 2550 50  0001 C CNN
F 1 "GND" H 10155 2627 50  0000 C CNN
F 2 "" H 10150 2800 50  0001 C CNN
F 3 "" H 10150 2800 50  0001 C CNN
	1    10150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2750 10150 2750
Wire Wire Line
	10150 2750 10150 2800
NoConn ~ 9700 2850
NoConn ~ 9700 3750
NoConn ~ 9700 3850
NoConn ~ 9700 3950
NoConn ~ 9700 4050
Wire Wire Line
	9650 3250 9850 3250
Wire Wire Line
	9650 3150 9850 3150
Wire Wire Line
	9850 3050 9650 3050
Wire Wire Line
	9850 2950 9650 2950
Text Label 9850 2950 0    50   ~ 0
D0
Text Label 9850 3050 0    50   ~ 0
D1
Wire Wire Line
	9850 2450 9650 2450
Text Label 9850 2450 0    50   ~ 0
RW
Text Label 5450 2750 0    50   ~ 0
RW
Wire Wire Line
	5450 2750 5650 2750
Wire Wire Line
	5450 2850 5650 2850
Text Label 5450 2850 0    50   ~ 0
RS
Wire Wire Line
	5450 3050 5650 3050
Wire Wire Line
	5450 3150 5650 3150
Wire Wire Line
	5450 3250 5650 3250
Wire Wire Line
	5450 3350 5650 3350
Wire Wire Line
	5450 3450 5650 3450
Wire Wire Line
	5450 3550 5650 3550
Wire Wire Line
	5450 3650 5650 3650
Wire Wire Line
	5450 3750 5650 3750
Text Label 5450 3050 0    50   ~ 0
D0
Text Label 5450 3150 0    50   ~ 0
D1
Text Label 5450 3250 0    50   ~ 0
D2
Text Label 5450 3350 0    50   ~ 0
D3
Text Label 5450 3450 0    50   ~ 0
D4
Text Label 5450 3550 0    50   ~ 0
D5
Text Label 5450 3650 0    50   ~ 0
D6
Text Label 5450 3750 0    50   ~ 0
D7
NoConn ~ 8300 2250
NoConn ~ 8300 2350
NoConn ~ 8300 2450
NoConn ~ 8300 2550
NoConn ~ 8300 2650
NoConn ~ 8300 2750
NoConn ~ 8300 2850
Wire Wire Line
	8150 4050 8350 4050
Wire Wire Line
	9850 3650 9650 3650
Wire Wire Line
	9650 3350 9850 3350
Wire Wire Line
	9650 3450 9850 3450
Wire Wire Line
	9650 3550 9850 3550
NoConn ~ 8300 3350
NoConn ~ 8300 3450
NoConn ~ 8300 3550
NoConn ~ 8300 3650
NoConn ~ 8300 3750
Wire Wire Line
	9650 2350 9850 2350
Wire Wire Line
	9650 2550 9850 2550
Wire Notes Line
	8250 2400 8400 2400
Wire Notes Line
	8400 2400 8400 2800
Wire Notes Line
	8400 2800 8250 2800
Wire Notes Line
	8250 2800 8250 2400
Wire Notes Line
	9600 3800 9600 4100
Wire Notes Line
	9750 4100 9750 3800
Wire Notes Line
	9600 4100 9750 4100
Wire Notes Line
	9750 3800 9600 3800
Wire Notes Line
	8400 4000 8400 3700
Wire Notes Line
	8400 3700 8200 3700
Wire Notes Line
	8200 3700 8200 4000
Wire Notes Line
	8200 4000 8400 4000
NoConn ~ 8300 3850
NoConn ~ 8300 3950
Wire Wire Line
	8300 3950 8350 3950
Wire Wire Line
	8300 3850 8350 3850
Wire Wire Line
	8300 3750 8350 3750
Wire Wire Line
	9650 4050 9700 4050
Wire Wire Line
	9650 3950 9700 3950
Wire Wire Line
	9650 3850 9700 3850
Wire Wire Line
	9650 3750 9700 3750
Wire Wire Line
	9650 2850 9700 2850
$Comp
L ESP32_Custom:ESP32-DevKit-v4 U1
U 1 1 61C6C2A5
P 8850 2550
F 0 "U1" H 9000 3115 50  0000 C CNN
F 1 "ESP32-DevKit-v4" H 9000 3024 50  0000 C CNN
F 2 "ESP32_Custom:ESP32-Dev-Kit-38" H 9450 950 50  0001 C CNN
F 3 "https://docs.espressif.com/projects/esp-idf/en/latest/esp32/_images/esp32-devkitC-v4-pinout.png" H 9450 950 50  0001 C CNN
	1    8850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2450 8300 2450
Wire Wire Line
	8300 2550 8350 2550
Wire Wire Line
	8300 2650 8350 2650
Wire Wire Line
	8350 2750 8300 2750
Wire Wire Line
	8300 2850 8350 2850
Wire Wire Line
	8300 3350 8350 3350
Wire Wire Line
	8300 3450 8350 3450
Wire Wire Line
	8300 3550 8350 3550
Wire Wire Line
	8300 3650 8350 3650
Wire Wire Line
	8350 2350 8300 2350
Wire Wire Line
	8300 2250 8350 2250
Text Label 9850 3150 0    50   ~ 0
D2
Text Label 9850 3250 0    50   ~ 0
D3
NoConn ~ 8300 2950
NoConn ~ 8300 3050
Wire Wire Line
	8300 2950 8350 2950
Wire Wire Line
	8300 3050 8350 3050
NoConn ~ 8300 3150
NoConn ~ 8300 3250
Wire Wire Line
	8300 3150 8350 3150
Wire Wire Line
	8300 3250 8350 3250
$Comp
L power:GND #PWR0107
U 1 1 617195B8
P 8150 4150
F 0 "#PWR0107" H 8150 3900 50  0001 C CNN
F 1 "GND" H 8155 3977 50  0000 C CNN
F 2 "" H 8150 4150 50  0001 C CNN
F 3 "" H 8150 4150 50  0001 C CNN
	1    8150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4150 8150 4050
Wire Wire Line
	3550 2100 3750 2100
Wire Wire Line
	3750 2100 3750 2150
$Comp
L power:GND #PWR?
U 1 1 61CE4EC2
P 3750 2150
F 0 "#PWR?" H 3750 1900 50  0001 C CNN
F 1 "GND" H 3755 1977 50  0000 C CNN
F 2 "" H 3750 2150 50  0001 C CNN
F 3 "" H 3750 2150 50  0001 C CNN
	1    3750 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61CE83E5
P 3750 1850
F 0 "#PWR?" H 3750 1700 50  0001 C CNN
F 1 "+5V" H 3765 2023 50  0000 C CNN
F 2 "" H 3750 1850 50  0001 C CNN
F 3 "" H 3750 1850 50  0001 C CNN
	1    3750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1850 3750 2000
Wire Wire Line
	3750 2000 3550 2000
$EndSCHEMATC
