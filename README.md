# Toy car electric system

A generic toy car electric system with lights and motion control.

## Building the project

This project is compiled with Arduino IDE. The IDE can be downloaded for free from the Arduino web site: https://www.arduino.cc/en/software

Any additional libraries are not needed so far.

If the Arduino Uno WiFi Rev2 is not in the list of the supported boards, use the board manager (Tools->Board: "your-current-board-selection"->Boards Manager...) to install the "Arduino megaAVR Boards" package. That package contains the required board.

Open the toy-car-electric-system.ino file to the Arduino IDE. The IDE will include automatically all the files located in the same folder with the .ino file.

Ensure that the Arduino Uno board is connected to the PC with a USB cable.

Use the "Upload" button in the top left corner of the IDE to build and upload the software to the board.

## Hardware schematic

The schematic of the hardware is drawn by using KiCad EDA software. The software can be downloaded for free from the KiCad web site: https://www.kicad.org/download/

The schematic is also available in PDF format in the hardware subfolder.

## Hardware information

This toy car electric system is based on Arduino Uno WiFi board equipped with a Grove shield and an Arduino 4-relay shield. The system is powered by two separate dry lead batteries: a 6 V battery for the motor, and a 12 V battery for lights and the Arduino. The headlights, backlights, and turn signals are LED based 12 V lamps commonly available as car spare/replacement parts. The indicators are 3mm LEDs with current limiting resistors. Switches are key switches, 2- and 3-position lever switches, rocker switches, and push buttons.

Bill of materials for the control system:

|Count|Manufacturer|Product code|Product name|
|---|---|---|---|
|1|Arduino|ABX00021|Arduino Uno WiFi Rev2|
|1|Seeeduino|103030009|Relay shield v3.0|
|1|Seeeduino|103030000|Grove Base Shield v2.0 for Arduino|
|2|Seeeduino|103020005|Grove Relay|
|4|Seeeduino|103020007|Grove Screw Terminal|

Bill of materials for the tractor installation:
|Count|Part|Purpose|
|---|---|---|
|1|Injusa toy tractor with 6V DC motor|Framework|
|1|2-position (ON-ON) lever switch|Motor direction selection (forward/backward)|
|1|2-position (ON-ON) lever switch|Main switch|
|1|3-position (ON-OFF-ON) lever switch|Turn signal selection|
|1|Rocker switch (ON-OFF)|Headlights / backlights on/off|
|1|Key switch|Main power on/off|
|1|Push button|Emergency signals on/off|
|1|Microswitch|Motor throttle control / pedal|
|2|Clear glass lamp enclosure|Headlights|
|2|12V white LED lamp|Headlights|
|2|Red glass lamp enclosure|Backlights|
|2|12V red LED lamp|Backlights|
|4|Yellow glass lamp enclosure|Turn & emergency signals|
|4|12V Yellow LED lamp|Turn & emergency signals|
|1|6V Dry Lead battery|Motor power supply|
|1|12V Dry Lead battery|System and lights power supply|
|3|3mm yellow LED|Motor direction indicators and headlight/backlight indicators|
|1|3mm red LED|Main power on indicator|
|2|3mm green LED|Turn signal indicators|
|6|3mm LED mount|LED mounting accessories|
|6|220R resistor|Current limiting resistors for indicator LEDs|
|10m|1,0mm2 wire|Motor wiring|
|20m|0,5mm2 wire|Lights wiring|
|20|Abiko terminals|Battery and lamp wiring|
|0.2m|Shrink tube|Wire joint protection|
|2|2.5x5.5mm DC power jack|Battery charging connectors|

## Software features

### Inputs

Input switches are used to control the functions of the electric system. All switches are read by the software individually, and they can be connected in the software to different functions freely.

The following switches are supported:
- Main power on/off switch.
- Turn signal left/off/right switch.
- Headlights/backlights on/off switch.
- Motor directional control forward/backward switch.
- Emergency signal on/off toggle push button.
- Throttle on/off microswitch.

The switches are read by using 50 ms delay to prevent glitches in the input state.

### Outputs

Outputs are used to control the lights and the motion of the vehicle. Some outputs are connected to relays, and others are connected directly to indicator LED lights.

The following relay outputs are supported:
- Motor direction control (two relays, connected to separate outputs).
- Motor on/off control.
- Left turn signal control.
- Right turn signal control.
- Headlights/backlights control.

The following direct LED outputs are supported:
- Power on indicator.
- Motor direction forward indicator.
- Motor direction aft indicator.
- Headlights/backlights on indicator.
- Turn signal left indicator.
- Turn signal right indicator.

### Motor direction control protection

The motor direction control is enabled only when the motor is not running. This reduces the stress of the direction control relays. When the motor is running, the direction control switch hasn't got any effect. However, if the switch position is changed, releasing the throttle switch will first cut off the power supply to the motor and then change the direction immediately. By pressing the throttle again the motor will run into the new direction.

The motor direction and throttle control is implemented as a state machine.

### Turn signals and emergency signal

Turn signals blink in certain rate. The rate is realized by the means of the software timer which doesn't block any execution of other parts in the software. The blinking can be stopped at any time. However, the blinking is controlled by a state machine and in normal operation the whole blinking sequence is driven despite of the user control.

The emergency signal uses both turn signals simultaneously. It uses a mechanism where the turn signal input switches are overridden by the emergency signal state. The emergency signal is controlled by a push button switch, which is used in a toggled mode: one press starts the operation and another press stops it.

### Dashboard indicator lights

All dashboard indicator lights are connected directly to Arduino outputs. This enables individual control of each indicator despite of the related switch position. At the power on all the indicator lights are set on for a short time to indicate that they all are working. During that time all operations of the dashboard except the main power switch are disabled.

During power off the indicator lights are all lit for a short time to indicate the power off sequence.
