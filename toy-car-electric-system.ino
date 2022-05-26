#include "Arduino.h"

#include "car_system.h"

// Car system.
car_system_c *car_system;

void setup() {
        // Create the car system.
        car_system = new car_system_c;
}

void loop() {
        // Run the car system.
        car_system->run();
}
