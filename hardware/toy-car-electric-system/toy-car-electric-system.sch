EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Toy car electric system"
Date "2022-05-26"
Rev ""
Comp "Tuomas Terho"
Comment1 "All rights reserved."
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_UNO_R3 A101
U 1 1 628FC96A
P 5600 3000
F 0 "A101" H 5600 4178 50  0000 C CNN
F 1 "Arduino_UNO_WIFI_REV2" H 6300 4000 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 5750 1950 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5400 4050 50  0001 C CNN
	1    5600 3000
	1    0    0    -1  
$EndComp
$Comp
L dk_Power-Relays-Over-2-Amps:G5LE-14_DC5 RLY102
U 1 1 628FCE17
P 1500 6100
F 0 "RLY102" H 1828 6100 50  0000 L CNN
F 1 "G5LE-14_DC5" H 1828 6055 50  0001 L CNN
F 2 "digikey-footprints:Relay_THT_G5LE-14" H 1700 6300 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 1700 6400 60  0001 L CNN
F 4 "Z1011-ND" H 1700 6500 60  0001 L CNN "Digi-Key_PN"
F 5 "G5LE-14 DC5" H 1700 6600 60  0001 L CNN "MPN"
F 6 "Relays" H 1700 6700 60  0001 L CNN "Category"
F 7 "Power Relays, Over 2 Amps" H 1700 6800 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 1700 6900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/G5LE-14-DC5/Z1011-ND/280371" H 1700 7000 60  0001 L CNN "DK_Detail_Page"
F 10 "RELAY GEN PURPOSE SPDT 10A 5V" H 1700 7100 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 1700 7200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1700 7300 60  0001 L CNN "Status"
	1    1500 6100
	1    0    0    -1  
$EndComp
$Comp
L dk_Power-Relays-Over-2-Amps:G5LE-14_DC5 RLY103
U 1 1 628FCE95
P 2400 6100
F 0 "RLY103" H 2728 6100 50  0000 L CNN
F 1 "G5LE-14_DC5" H 2728 6055 50  0001 L CNN
F 2 "digikey-footprints:Relay_THT_G5LE-14" H 2600 6300 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 2600 6400 60  0001 L CNN
F 4 "Z1011-ND" H 2600 6500 60  0001 L CNN "Digi-Key_PN"
F 5 "G5LE-14 DC5" H 2600 6600 60  0001 L CNN "MPN"
F 6 "Relays" H 2600 6700 60  0001 L CNN "Category"
F 7 "Power Relays, Over 2 Amps" H 2600 6800 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 2600 6900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/G5LE-14-DC5/Z1011-ND/280371" H 2600 7000 60  0001 L CNN "DK_Detail_Page"
F 10 "RELAY GEN PURPOSE SPDT 10A 5V" H 2600 7100 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 2600 7200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2600 7300 60  0001 L CNN "Status"
	1    2400 6100
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M101
U 1 1 628FD00B
P 2100 7100
F 0 "M101" V 2300 7000 50  0000 L CNN
F 1 "Motor_DC" V 2400 7000 50  0000 L CNN
F 2 "" H 2100 7010 50  0001 C CNN
F 3 "~" H 2100 7010 50  0001 C CNN
	1    2100 7100
	0    1    1    0   
$EndComp
$Comp
L Device:Battery BT102
U 1 1 628FD08C
P 10250 5550
F 0 "BT102" H 10358 5596 50  0000 L CNN
F 1 "12V" H 10358 5505 50  0000 L CNN
F 2 "" V 10250 5610 50  0001 C CNN
F 3 "~" V 10250 5610 50  0001 C CNN
	1    10250 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT101
U 1 1 628FD0D4
P 2500 4950
F 0 "BT101" H 2608 4996 50  0000 L CNN
F 1 "6V" H 2608 4905 50  0000 L CNN
F 2 "" V 2500 5010 50  0001 C CNN
F 3 "~" V 2500 5010 50  0001 C CNN
	1    2500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6400 1300 6500
$Comp
L power:GND #PWR0112
U 1 1 628FD309
P 1050 6750
F 0 "#PWR0112" H 1050 6500 50  0001 C CNN
F 1 "GND" H 1055 6577 50  0000 C CNN
F 2 "" H 1050 6750 50  0001 C CNN
F 3 "" H 1050 6750 50  0001 C CNN
	1    1050 6750
	1    0    0    -1  
$EndComp
$Comp
L dk_Power-Relays-Over-2-Amps:G5LE-14_DC5 RLY101
U 1 1 628FD63C
P 1600 4950
F 0 "RLY101" H 1928 4996 50  0000 L CNN
F 1 "Grove relay" H 1928 4905 50  0000 L CNN
F 2 "digikey-footprints:Relay_THT_G5LE-14" H 1800 5150 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 1800 5250 60  0001 L CNN
F 4 "Z1011-ND" H 1800 5350 60  0001 L CNN "Digi-Key_PN"
F 5 "G5LE-14 DC5" H 1800 5450 60  0001 L CNN "MPN"
F 6 "Relays" H 1800 5550 60  0001 L CNN "Category"
F 7 "Power Relays, Over 2 Amps" H 1800 5650 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 1800 5750 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/G5LE-14-DC5/Z1011-ND/280371" H 1800 5850 60  0001 L CNN "DK_Detail_Page"
F 10 "RELAY GEN PURPOSE SPDT 10A 5V" H 1800 5950 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 1800 6050 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1800 6150 60  0001 L CNN "Status"
	1    1600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5250 1700 5400
Wire Wire Line
	1600 4500 1600 4650
Wire Wire Line
	1600 7100 1800 7100
Wire Wire Line
	2300 7100 2500 7100
Wire Wire Line
	1400 5250 1400 5400
Wire Wire Line
	1400 5400 1050 5400
Wire Wire Line
	1050 5400 1050 6500
Wire Wire Line
	1400 4650 1400 4350
Wire Wire Line
	10250 5750 10250 5850
$Comp
L power:GND #PWR0110
U 1 1 628FF8A4
P 10250 5850
F 0 "#PWR0110" H 10250 5600 50  0001 C CNN
F 1 "GND" H 10255 5677 50  0000 C CNN
F 2 "" H 10250 5850 50  0001 C CNN
F 3 "" H 10250 5850 50  0001 C CNN
	1    10250 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 628FF8E6
P 10250 5250
F 0 "#PWR0107" H 10250 5100 50  0001 C CNN
F 1 "+12V" H 10265 5423 50  0000 C CNN
F 2 "" H 10250 5250 50  0001 C CNN
F 3 "" H 10250 5250 50  0001 C CNN
	1    10250 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5250 10250 5350
$Comp
L dk_Power-Relays-Over-2-Amps:G5LE-14_DC5 RLY104
U 1 1 6290052F
P 3250 6100
F 0 "RLY104" H 3578 6100 50  0000 L CNN
F 1 "G5LE-14_DC5" H 3578 6055 50  0001 L CNN
F 2 "digikey-footprints:Relay_THT_G5LE-14" H 3450 6300 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 3450 6400 60  0001 L CNN
F 4 "Z1011-ND" H 3450 6500 60  0001 L CNN "Digi-Key_PN"
F 5 "G5LE-14 DC5" H 3450 6600 60  0001 L CNN "MPN"
F 6 "Relays" H 3450 6700 60  0001 L CNN "Category"
F 7 "Power Relays, Over 2 Amps" H 3450 6800 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 3450 6900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/G5LE-14-DC5/Z1011-ND/280371" H 3450 7000 60  0001 L CNN "DK_Detail_Page"
F 10 "RELAY GEN PURPOSE SPDT 10A 5V" H 3450 7100 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 3450 7200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3450 7300 60  0001 L CNN "Status"
	1    3250 6100
	1    0    0    -1  
$EndComp
$Comp
L dk_Power-Relays-Over-2-Amps:G5LE-14_DC5 RLY105
U 1 1 6290057F
P 4150 6100
F 0 "RLY105" H 4478 6100 50  0000 L CNN
F 1 "G5LE-14_DC5" H 4478 6055 50  0001 L CNN
F 2 "digikey-footprints:Relay_THT_G5LE-14" H 4350 6300 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 4350 6400 60  0001 L CNN
F 4 "Z1011-ND" H 4350 6500 60  0001 L CNN "Digi-Key_PN"
F 5 "G5LE-14 DC5" H 4350 6600 60  0001 L CNN "MPN"
F 6 "Relays" H 4350 6700 60  0001 L CNN "Category"
F 7 "Power Relays, Over 2 Amps" H 4350 6800 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 4350 6900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/G5LE-14-DC5/Z1011-ND/280371" H 4350 7000 60  0001 L CNN "DK_Detail_Page"
F 10 "RELAY GEN PURPOSE SPDT 10A 5V" H 4350 7100 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 4350 7200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4350 7300 60  0001 L CNN "Status"
	1    4150 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp LA101
U 1 1 629005EC
P 2900 6950
F 0 "LA101" H 3028 7087 50  0000 L CNN
F 1 "12V" H 3028 6996 50  0000 L CNN
F 2 "" V 2900 7050 50  0001 C CNN
F 3 "~" V 2900 7050 50  0001 C CNN
F 4 "Left" H 3028 6905 50  0000 L CNN "Side"
F 5 "Front" H 3028 6814 50  0000 L CNN "FB"
	1    2900 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp LA102
U 1 1 629007D6
P 3350 6950
F 0 "LA102" H 3478 7087 50  0000 L CNN
F 1 "12V" H 3478 6996 50  0000 L CNN
F 2 "" V 3350 7050 50  0001 C CNN
F 3 "~" V 3350 7050 50  0001 C CNN
F 4 "Left" H 3478 6905 50  0000 L CNN "Side"
F 5 "Back" H 3478 6814 50  0000 L CNN "FB"
	1    3350 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp LA103
U 1 1 62900810
P 3800 6950
F 0 "LA103" H 3928 7087 50  0000 L CNN
F 1 "12V" H 3928 6996 50  0000 L CNN
F 2 "" V 3800 7050 50  0001 C CNN
F 3 "~" V 3800 7050 50  0001 C CNN
F 4 "Right" H 3928 6905 50  0000 L CNN "Side"
F 5 "Front" H 3928 6814 50  0000 L CNN "FB"
	1    3800 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp LA104
U 1 1 62900864
P 4250 6950
F 0 "LA104" H 4378 7087 50  0000 L CNN
F 1 "12V" H 4378 6996 50  0000 L CNN
F 2 "" V 4250 7050 50  0001 C CNN
F 3 "~" V 4250 7050 50  0001 C CNN
F 4 "Right" H 4378 6905 50  0000 L CNN "Side"
F 5 "Back" H 4378 6814 50  0000 L CNN "FB"
	1    4250 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6750 2900 6700
Wire Wire Line
	3800 6750 3800 6700
Wire Wire Line
	1050 6500 1300 6500
Connection ~ 1050 6500
Connection ~ 1300 6500
Connection ~ 2200 6500
Wire Wire Line
	2200 6500 2200 6400
Wire Wire Line
	2200 6500 3050 6500
Wire Wire Line
	3050 6500 3050 6400
Wire Wire Line
	3050 6500 3950 6500
Wire Wire Line
	3950 6500 3950 6400
Connection ~ 3050 6500
Wire Wire Line
	2900 6700 3350 6700
Connection ~ 3350 6700
Wire Wire Line
	3350 6700 3350 6750
Wire Wire Line
	3800 6700 4250 6700
Connection ~ 4250 6700
Wire Wire Line
	4250 6700 4250 6750
Wire Wire Line
	1300 6500 2200 6500
Wire Wire Line
	1050 6500 1050 6750
Wire Wire Line
	2900 7150 2900 7250
Wire Wire Line
	2900 7250 3350 7250
Wire Wire Line
	4250 7250 4250 7150
Wire Wire Line
	3350 7150 3350 7250
Connection ~ 3350 7250
Wire Wire Line
	3350 7250 3800 7250
Wire Wire Line
	3800 7150 3800 7250
Connection ~ 3800 7250
Wire Wire Line
	3800 7250 4250 7250
$Comp
L power:GND #PWR0113
U 1 1 62908235
P 2900 7350
F 0 "#PWR0113" H 2900 7100 50  0001 C CNN
F 1 "GND" H 2905 7177 50  0000 C CNN
F 2 "" H 2900 7350 50  0001 C CNN
F 3 "" H 2900 7350 50  0001 C CNN
	1    2900 7350
	1    0    0    -1  
$EndComp
Connection ~ 2900 7250
$Comp
L power:+12V #PWR0108
U 1 1 62909DAE
P 4150 5550
F 0 "#PWR0108" H 4150 5400 50  0001 C CNN
F 1 "+12V" H 4165 5723 50  0000 C CNN
F 2 "" H 4150 5550 50  0001 C CNN
F 3 "" H 4150 5550 50  0001 C CNN
	1    4150 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5550 4150 5600
$Comp
L dk_Power-Relays-Over-2-Amps:G5LE-14_DC5 RLY106
U 1 1 6290F817
P 5050 6100
F 0 "RLY106" H 5378 6146 50  0000 L CNN
F 1 "Grove relay" H 5378 6055 50  0000 L CNN
F 2 "digikey-footprints:Relay_THT_G5LE-14" H 5250 6300 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 5250 6400 60  0001 L CNN
F 4 "Z1011-ND" H 5250 6500 60  0001 L CNN "Digi-Key_PN"
F 5 "G5LE-14 DC5" H 5250 6600 60  0001 L CNN "MPN"
F 6 "Relays" H 5250 6700 60  0001 L CNN "Category"
F 7 "Power Relays, Over 2 Amps" H 5250 6800 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 5250 6900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/G5LE-14-DC5/Z1011-ND/280371" H 5250 7000 60  0001 L CNN "DK_Detail_Page"
F 10 "RELAY GEN PURPOSE SPDT 10A 5V" H 5250 7100 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 5250 7200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5250 7300 60  0001 L CNN "Status"
	1    5050 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp LA105
U 1 1 6291195C
P 4850 6950
F 0 "LA105" H 4978 7087 50  0000 L CNN
F 1 "12V" H 4978 6996 50  0000 L CNN
F 2 "" V 4850 7050 50  0001 C CNN
F 3 "~" V 4850 7050 50  0001 C CNN
F 4 "Left" H 4978 6905 50  0000 L CNN "Side"
F 5 "Front" H 4978 6814 50  0000 L CNN "FB"
	1    4850 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp LA107
U 1 1 62911965
P 5750 6950
F 0 "LA107" H 5878 7087 50  0000 L CNN
F 1 "12V" H 5878 6996 50  0000 L CNN
F 2 "" V 5750 7050 50  0001 C CNN
F 3 "~" V 5750 7050 50  0001 C CNN
F 4 "Left" H 5878 6905 50  0000 L CNN "Side"
F 5 "Back" H 5878 6814 50  0000 L CNN "FB"
	1    5750 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp LA106
U 1 1 6291196E
P 5300 6950
F 0 "LA106" H 5428 7087 50  0000 L CNN
F 1 "12V" H 5428 6996 50  0000 L CNN
F 2 "" V 5300 7050 50  0001 C CNN
F 3 "~" V 5300 7050 50  0001 C CNN
F 4 "Right" H 5428 6905 50  0000 L CNN "Side"
F 5 "Front" H 5428 6814 50  0000 L CNN "FB"
	1    5300 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp LA108
U 1 1 62911977
P 6200 6950
F 0 "LA108" H 6328 7087 50  0000 L CNN
F 1 "12V" H 6328 6996 50  0000 L CNN
F 2 "" V 6200 7050 50  0001 C CNN
F 3 "~" V 6200 7050 50  0001 C CNN
F 4 "Right" H 6328 6905 50  0000 L CNN "Side"
F 5 "Back" H 6328 6814 50  0000 L CNN "FB"
	1    6200 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6400 4850 6500
Wire Wire Line
	5150 6700 4850 6700
Wire Wire Line
	4850 6700 4850 6750
Wire Wire Line
	5150 6700 5300 6700
Wire Wire Line
	6200 6700 6200 6750
Connection ~ 5150 6700
Wire Wire Line
	5750 6750 5750 6700
Connection ~ 5750 6700
Wire Wire Line
	5750 6700 6200 6700
Wire Wire Line
	5300 6750 5300 6700
Connection ~ 5300 6700
Wire Wire Line
	5300 6700 5750 6700
Wire Wire Line
	6200 7150 6200 7250
Wire Wire Line
	6200 7250 5750 7250
Wire Wire Line
	4850 7250 4850 7150
Wire Wire Line
	5300 7150 5300 7250
Connection ~ 5300 7250
Wire Wire Line
	5300 7250 4850 7250
Wire Wire Line
	5750 7150 5750 7250
Connection ~ 5750 7250
Wire Wire Line
	5750 7250 5300 7250
Wire Wire Line
	2900 7250 2900 7350
$Comp
L power:GND #PWR0114
U 1 1 6291D7D3
P 4850 7350
F 0 "#PWR0114" H 4850 7100 50  0001 C CNN
F 1 "GND" H 4855 7177 50  0000 C CNN
F 2 "" H 4850 7350 50  0001 C CNN
F 3 "" H 4850 7350 50  0001 C CNN
	1    4850 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7350 4850 7250
Connection ~ 4850 7250
$Comp
L power:+12V #PWR0109
U 1 1 629212B1
P 5050 5550
F 0 "#PWR0109" H 5050 5400 50  0001 C CNN
F 1 "+12V" H 5065 5723 50  0000 C CNN
F 2 "" H 5050 5550 50  0001 C CNN
F 3 "" H 5050 5550 50  0001 C CNN
	1    5050 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 629212E0
P 4700 6600
F 0 "#PWR0111" H 4700 6350 50  0001 C CNN
F 1 "GND" H 4705 6427 50  0000 C CNN
F 2 "" H 4700 6600 50  0001 C CNN
F 3 "" H 4700 6600 50  0001 C CNN
	1    4700 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6500 4700 6500
Wire Wire Line
	5050 5550 5050 5800
$Comp
L dk_Pushbutton-Switches:GPTS203211B S102
U 1 1 62924F2B
P 8200 3500
F 0 "S102" H 8200 3684 50  0000 C CNN
F 1 "GPTS203211B" H 8200 3684 50  0001 C CNN
F 2 "digikey-footprints:PushButton_12x12mm_THT_GPTS203211B" H 8400 3700 50  0001 L CNN
F 3 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 8400 3800 60  0001 L CNN
F 4 "CW181-ND" H 8400 3900 60  0001 L CNN "Digi-Key_PN"
F 5 "GPTS203211B" H 8400 4000 60  0001 L CNN "MPN"
F 6 "Switches" H 8400 4100 60  0001 L CNN "Category"
F 7 "Pushbutton Switches" H 8400 4200 60  0001 L CNN "Family"
F 8 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 8400 4300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cw-industries/GPTS203211B/CW181-ND/3190590" H 8400 4400 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH PUSHBUTTON SPST 1A 30V" H 8400 4500 60  0001 L CNN "Description"
F 11 "CW Industries" H 8400 4600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8400 4700 60  0001 L CNN "Status"
	1    8200 3500
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW101
U 1 1 629250E6
P 8200 1900
F 0 "SW101" H 8200 2043 50  0000 C CNN
F 1 "SW_SPST" H 8200 2044 50  0001 C CNN
F 2 "" H 8200 1900 50  0001 C CNN
F 3 "" H 8200 1900 50  0001 C CNN
	1    8200 1900
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT_MSM SW103
U 1 1 62925520
P 8200 2700
F 0 "SW103" H 8200 2900 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 8200 2894 50  0001 C CNN
F 2 "" H 8200 2700 50  0001 C CNN
F 3 "" H 8200 2700 50  0001 C CNN
	1    8200 2700
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW102
U 1 1 6292582C
P 8200 2300
F 0 "SW102" H 8200 2500 50  0000 C CNN
F 1 "SW_SPDT" H 8200 2494 50  0001 C CNN
F 2 "" H 8200 2300 50  0001 C CNN
F 3 "" H 8200 2300 50  0001 C CNN
	1    8200 2300
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW104
U 1 1 62925A63
P 8200 3100
F 0 "SW104" H 8200 3243 50  0000 C CNN
F 1 "SW_SPST" H 8200 3244 50  0001 C CNN
F 2 "" H 8200 3100 50  0001 C CNN
F 3 "" H 8200 3100 50  0001 C CNN
	1    8200 3100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6292797D
P 2450 3450
F 0 "#PWR0104" H 2450 3200 50  0001 C CNN
F 1 "GND" H 2455 3277 50  0000 C CNN
F 2 "" H 2450 3450 50  0001 C CNN
F 3 "" H 2450 3450 50  0001 C CNN
	1    2450 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D105
U 1 1 62941200
P 8200 4200
F 0 "D105" H 8191 4416 50  0000 C CNN
F 1 "LED" H 8191 4325 50  0000 C CNN
F 2 "" H 8200 4200 50  0001 C CNN
F 3 "~" H 8200 4200 50  0001 C CNN
	1    8200 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D106
U 1 1 62941250
P 8200 4550
F 0 "D106" H 8191 4766 50  0000 C CNN
F 1 "LED" H 8191 4675 50  0000 C CNN
F 2 "" H 8200 4550 50  0001 C CNN
F 3 "~" H 8200 4550 50  0001 C CNN
	1    8200 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D103
U 1 1 6294129E
P 2700 1950
F 0 "D103" H 2691 2166 50  0000 C CNN
F 1 "LED" H 2691 2075 50  0000 C CNN
F 2 "" H 2700 1950 50  0001 C CNN
F 3 "~" H 2700 1950 50  0001 C CNN
	1    2700 1950
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D104
U 1 1 629412F4
P 2700 2350
F 0 "D104" H 2691 2566 50  0000 C CNN
F 1 "LED" H 2691 2475 50  0000 C CNN
F 2 "" H 2700 2350 50  0001 C CNN
F 3 "~" H 2700 2350 50  0001 C CNN
	1    2700 2350
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R105
U 1 1 6294471F
P 7850 4200
F 0 "R105" V 7643 4200 50  0000 C CNN
F 1 "220R" V 7734 4200 50  0000 C CNN
F 2 "" V 7780 4200 50  0001 C CNN
F 3 "~" H 7850 4200 50  0001 C CNN
	1    7850 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R106
U 1 1 62944781
P 7850 4550
F 0 "R106" V 7643 4550 50  0000 C CNN
F 1 "220R" V 7734 4550 50  0000 C CNN
F 2 "" V 7780 4550 50  0001 C CNN
F 3 "~" H 7850 4550 50  0001 C CNN
	1    7850 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R103
U 1 1 629447E7
P 3100 1950
F 0 "R103" V 2893 1950 50  0000 C CNN
F 1 "220R" V 2984 1950 50  0000 C CNN
F 2 "" V 3030 1950 50  0001 C CNN
F 3 "~" H 3100 1950 50  0001 C CNN
	1    3100 1950
	0    -1   1    0   
$EndComp
$Comp
L Device:R R104
U 1 1 62944859
P 3100 2350
F 0 "R104" V 2893 2350 50  0000 C CNN
F 1 "220R" V 2984 2350 50  0000 C CNN
F 2 "" V 3030 2350 50  0001 C CNN
F 3 "~" H 3100 2350 50  0001 C CNN
	1    3100 2350
	0    -1   1    0   
$EndComp
Wire Wire Line
	2850 1950 2950 1950
Wire Wire Line
	2850 2350 2950 2350
$Comp
L power:+5V #PWR0101
U 1 1 62956A9F
P 2450 1050
F 0 "#PWR0101" H 2450 900 50  0001 C CNN
F 1 "+5V" H 2465 1223 50  0000 C CNN
F 2 "" H 2450 1050 50  0001 C CNN
F 3 "" H 2450 1050 50  0001 C CNN
	1    2450 1050
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 62956AF7
P 5800 1750
F 0 "#PWR0103" H 5800 1600 50  0001 C CNN
F 1 "+5V" H 5815 1923 50  0000 C CNN
F 2 "" H 5800 1750 50  0001 C CNN
F 3 "" H 5800 1750 50  0001 C CNN
	1    5800 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1750 5800 2000
$Comp
L power:+12V #PWR0102
U 1 1 629598D3
P 5500 1750
F 0 "#PWR0102" H 5500 1600 50  0001 C CNN
F 1 "+12V" H 5515 1923 50  0000 C CNN
F 2 "" H 5500 1750 50  0001 C CNN
F 3 "" H 5500 1750 50  0001 C CNN
	1    5500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1750 5500 2000
Wire Wire Line
	8350 4550 8500 4550
Text Notes 8600 3500 0    50   ~ 0
Emergency signal ON/OFF toggle push button
Text Notes 8600 1900 0    50   ~ 0
Headlights / backlights ON/OFF switch
Text Notes 8600 2300 0    50   ~ 0
Motor direction FW/BW selector switch
Text Notes 8600 2700 0    50   ~ 0
Turn signal LEFT/OFF/RIGHT selector switch
Text Notes 8600 3100 0    50   ~ 0
Main power ON/OFF switch
Wire Wire Line
	5100 2600 3550 2600
Wire Wire Line
	5100 2700 4850 2700
Wire Notes Line
	950  5750 4550 5750
Wire Notes Line
	4550 5750 4550 6600
Wire Notes Line
	4550 6600 950  6600
Wire Notes Line
	950  6600 950  5750
Text Notes 900  6600 1    50   ~ 0
Arduino 4-relay shield
$Comp
L dk_Pushbutton-Switches:GPTS203211B S101
U 1 1 629D9855
P 2750 3300
F 0 "S101" H 2750 3484 50  0000 C CNN
F 1 "GPTS203211B" H 2750 3484 50  0001 C CNN
F 2 "digikey-footprints:PushButton_12x12mm_THT_GPTS203211B" H 2950 3500 50  0001 L CNN
F 3 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 2950 3600 60  0001 L CNN
F 4 "CW181-ND" H 2950 3700 60  0001 L CNN "Digi-Key_PN"
F 5 "GPTS203211B" H 2950 3800 60  0001 L CNN "MPN"
F 6 "Switches" H 2950 3900 60  0001 L CNN "Category"
F 7 "Pushbutton Switches" H 2950 4000 60  0001 L CNN "Family"
F 8 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 2950 4100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cw-industries/GPTS203211B/CW181-ND/3190590" H 2950 4200 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH PUSHBUTTON SPST 1A 30V" H 2950 4300 60  0001 L CNN "Description"
F 11 "CW Industries" H 2950 4400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2950 4500 60  0001 L CNN "Status"
	1    2750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3450 2450 3300
Wire Wire Line
	2450 3300 2550 3300
Wire Wire Line
	2950 3300 5100 3300
Wire Wire Line
	3950 3600 5100 3600
Wire Wire Line
	3950 3600 3950 5800
Wire Wire Line
	2500 4750 2500 4500
Wire Wire Line
	2500 4500 1600 4500
Wire Wire Line
	2500 5150 2500 5300
Wire Wire Line
	2500 5300 1500 5300
Wire Wire Line
	2500 5300 2600 5300
Connection ~ 2500 5300
Wire Wire Line
	1500 5300 1500 5800
Wire Wire Line
	2600 5300 2600 5800
Wire Wire Line
	1700 5400 2400 5400
Connection ~ 1700 5400
Wire Wire Line
	1700 5400 1700 5800
Wire Wire Line
	2400 5400 2400 5800
Wire Wire Line
	1300 5500 1300 5800
Wire Wire Line
	2200 5600 2200 5800
Wire Wire Line
	3050 4700 3050 5800
Wire Wire Line
	2950 5600 2950 4600
Wire Wire Line
	2850 4500 2850 5500
Wire Wire Line
	2200 5600 2950 5600
Wire Wire Line
	1300 5500 2850 5500
Wire Wire Line
	3250 5600 4150 5600
Connection ~ 4150 5600
Wire Wire Line
	3250 5600 3250 5800
Wire Wire Line
	4150 5600 4150 5800
Wire Wire Line
	1600 6400 1600 7100
Wire Wire Line
	2500 6400 2500 7100
Wire Wire Line
	5150 6400 5150 6700
Wire Wire Line
	4700 6500 4700 6600
Wire Wire Line
	4250 6400 4250 6700
Wire Wire Line
	3350 6400 3350 6700
Wire Wire Line
	3850 4700 3850 3200
Wire Wire Line
	3850 3200 5100 3200
Wire Wire Line
	3750 3100 3750 4600
Wire Wire Line
	3750 3100 5100 3100
Wire Wire Line
	3650 4500 3650 2800
Wire Wire Line
	3650 2800 5100 2800
Wire Wire Line
	3550 4350 3550 2600
Wire Wire Line
	1400 4350 3550 4350
Wire Wire Line
	2850 4500 3650 4500
Wire Wire Line
	2950 4600 3750 4600
Wire Wire Line
	3050 4700 3850 4700
Wire Wire Line
	4850 2700 4850 5800
Wire Wire Line
	8350 4200 8500 4200
Wire Wire Line
	8500 4200 8500 4550
Wire Wire Line
	7450 3700 6100 3700
Wire Wire Line
	6100 3800 7350 3800
Wire Wire Line
	6100 3500 8000 3500
Wire Wire Line
	6100 3400 7900 3400
Wire Wire Line
	7900 3100 8000 3100
Wire Wire Line
	7900 3100 7900 3400
Wire Wire Line
	7800 3300 7800 2800
Wire Wire Line
	7800 2800 8000 2800
Wire Wire Line
	7700 3200 7700 2600
Wire Wire Line
	7700 2600 8000 2600
Wire Wire Line
	6100 3200 7700 3200
Wire Wire Line
	6100 3300 7800 3300
Wire Wire Line
	7600 3100 7600 2400
Wire Wire Line
	7600 2400 8000 2400
Wire Wire Line
	6100 3100 7600 3100
Wire Wire Line
	8000 1900 7500 1900
Wire Wire Line
	7500 1900 7500 3000
Wire Wire Line
	6100 3000 7500 3000
Wire Wire Line
	8400 3500 8500 3500
Wire Wire Line
	8500 3500 8500 3100
Wire Wire Line
	8500 1900 8400 1900
Wire Wire Line
	8400 2300 8500 2300
Connection ~ 8500 2300
Wire Wire Line
	8500 2300 8500 1900
Wire Wire Line
	8400 2700 8500 2700
Connection ~ 8500 2700
Wire Wire Line
	8500 2700 8500 2300
Wire Wire Line
	8400 3100 8500 3100
Connection ~ 8500 3100
Wire Wire Line
	8500 3100 8500 2700
Wire Wire Line
	8050 4200 8000 4200
Wire Wire Line
	8050 4550 8000 4550
Wire Wire Line
	7450 4200 7700 4200
Wire Wire Line
	7350 4550 7700 4550
$Comp
L power:GND #PWR0105
U 1 1 62C08C90
P 8500 3600
F 0 "#PWR0105" H 8500 3350 50  0001 C CNN
F 1 "GND" H 8505 3427 50  0000 C CNN
F 2 "" H 8500 3600 50  0001 C CNN
F 3 "" H 8500 3600 50  0001 C CNN
	1    8500 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3700 7450 4200
Wire Wire Line
	7350 3800 7350 4550
Wire Wire Line
	8500 4100 8500 4200
Connection ~ 8500 4200
Wire Wire Line
	8500 3600 8500 3500
Connection ~ 8500 3500
Wire Wire Line
	2550 1950 2450 1950
Wire Wire Line
	2550 2350 2450 2350
$Comp
L Device:LED D101
U 1 1 62C4CE1E
P 2700 1150
F 0 "D101" H 2691 1366 50  0000 C CNN
F 1 "LED" H 2691 1275 50  0000 C CNN
F 2 "" H 2700 1150 50  0001 C CNN
F 3 "~" H 2700 1150 50  0001 C CNN
	1    2700 1150
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D102
U 1 1 62C4CE25
P 2700 1550
F 0 "D102" H 2691 1766 50  0000 C CNN
F 1 "LED" H 2691 1675 50  0000 C CNN
F 2 "" H 2700 1550 50  0001 C CNN
F 3 "~" H 2700 1550 50  0001 C CNN
	1    2700 1550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R101
U 1 1 62C4CE2C
P 3100 1150
F 0 "R101" V 2893 1150 50  0000 C CNN
F 1 "220R" V 2984 1150 50  0000 C CNN
F 2 "" V 3030 1150 50  0001 C CNN
F 3 "~" H 3100 1150 50  0001 C CNN
	1    3100 1150
	0    -1   1    0   
$EndComp
$Comp
L Device:R R102
U 1 1 62C4CE33
P 3100 1550
F 0 "R102" V 2893 1550 50  0000 C CNN
F 1 "220R" V 2984 1550 50  0000 C CNN
F 2 "" V 3030 1550 50  0001 C CNN
F 3 "~" H 3100 1550 50  0001 C CNN
	1    3100 1550
	0    -1   1    0   
$EndComp
Wire Wire Line
	2850 1150 2950 1150
Wire Wire Line
	2850 1550 2950 1550
Wire Wire Line
	2450 1550 2450 1150
Wire Wire Line
	2550 1150 2450 1150
Wire Wire Line
	2550 1550 2450 1550
Connection ~ 2450 1150
Wire Wire Line
	2450 1550 2450 1950
Connection ~ 2450 1550
Connection ~ 2450 1950
Wire Wire Line
	2450 1950 2450 2350
$Comp
L power:+5V #PWR0106
U 1 1 62C73175
P 8500 4100
F 0 "#PWR0106" H 8500 3950 50  0001 C CNN
F 1 "+5V" H 8515 4273 50  0000 C CNN
F 2 "" H 8500 4100 50  0001 C CNN
F 3 "" H 8500 4100 50  0001 C CNN
	1    8500 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2450 1050 2450 1150
Wire Wire Line
	3750 3000 3750 2350
Wire Wire Line
	3750 2350 3250 2350
Wire Wire Line
	3850 2900 3850 1950
Wire Wire Line
	3850 1950 3250 1950
Wire Wire Line
	3950 2500 3950 1550
Wire Wire Line
	3950 1550 3250 1550
Wire Wire Line
	4050 2400 4050 1150
Wire Wire Line
	4050 1150 3250 1150
Wire Wire Line
	3850 2900 5100 2900
Wire Wire Line
	4050 2400 5100 2400
Wire Wire Line
	3950 2500 5100 2500
Wire Wire Line
	3750 3000 5100 3000
Text Notes 2350 3300 2    50   ~ 0
Motor throttle ON/OFF switch
Text Notes 2350 1150 2    50   ~ 0
Turn signal indicator LEFT
Text Notes 2350 1550 2    50   ~ 0
Turn signal indicator RIGHT
Text Notes 2350 1950 2    50   ~ 0
Motor direction indicator FW
Text Notes 2350 2350 2    50   ~ 0
Motor direction indicator BW
Text Notes 8600 4200 0    50   ~ 0
Headlight / backlight indicator
Text Notes 8600 4550 0    50   ~ 0
Main power indicator
Text Notes 5100 7400 0    50   ~ 0
Headlights / Backlights
Text Notes 3150 7400 0    50   ~ 0
Turn signal lights
$EndSCHEMATC
