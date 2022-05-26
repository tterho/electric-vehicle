# Toy car electric system

A generic toy car electric system with lights and motion control.

## System information

This toy car electric system is based on Arduino Uno WiFi board equipped with a Grove shield and a relay shield. The system is powered from two separate dry lead batteries, a 6 V battery for the motor and a 12 V battery for lights and the Arduino. The headlights, backlights, and turn signals are LED based 12 V lamps commonly available as car spare/replacement parts.

Part list of the control system:

|Count|Manufacturer|Product code|Product name|
|---|---|---|---|
|1|Arduino|ABX00021|Arduino Uno WiFi Rev2|
|1|Arduino|A000110| Arduino 4 Relays Shield|
|1|Seeeduino|103030000|Grove Base Shield v2.0 for Arduino|
|2|Seeeduino|103020005|Grove Relay|

## Features

### Inputs

Input switches are used to control the functions of the electric system. All switches are read by the software individually, and they can be connected in the software to different functions freely.

The following switches are supported:
- Power on/off lever switch.
- Turn signal left/off/right lever switch.
- Headlights/backlights on/off lever switch.
- Motor directional control forward/aft lever switch.
- Emergency signal on/off toggle push button.
- Throttle on/off push button.

### Outputs

Outputs are used to control the lights and the motion of the vehicle. Some outputs are connected to relays, and others are connected directly to indicator LED lights.

The following relay outputs are supported:
- Motor direction control (two relays, connected to separate outputs).
- Motor on/off control.
- Left turn signal control.
- Right turn signal control.
- Headlights/bakclights control.

The following direct LED outputs are supported:
- Power on indicator.
- Motor direction forward indicator.
- Motor direction aft indicator.
- Headlights/backlights on indicator.
- Turn signal left indicator.
- Turn signal right indicator.
