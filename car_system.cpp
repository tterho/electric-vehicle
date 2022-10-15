/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#include "car_system.h"
#include "Arduino.h"

/// Relay shield relay 1 output pin.
#define PIN_SHIELD_RELAY_1 7
/// Relay shield relay 2 output pin.
#define PIN_SHIELD_RELAY_2 6
/// Relay shield relay 3 output pin.
#define PIN_SHIELD_RELAY_3 5
/// Relay shield relay 4 output pin.
#define PIN_SHIELD_RELAY_4 4

/// External relay 1 output pin.
#define PIN_EXTERNAL_RELAY_1 2
/// External relay 2 output pin.
#define PIN_EXTERNAL_RELAY_2 3

/// Power control switch input pin.
#define PIN_POWER_SWITCH 18
/// Power control indicator output pin.
#define PIN_POWER_INDICATOR 21

/// Light control switch input pin.
#define PIN_LIGHT_SWITCH 14
/// Light control relay output pin.
#define PIN_LIGHT_CTRL PIN_EXTERNAL_RELAY_2
/// Light control indicator output pin.
#define PIN_LIGHT_INDICATOR 20

/// Left turn signal switch input pin.
#define PIN_TURN_SIGNAL_SWITCH_L 16
/// Left turn signal control relay output pin.
#define PIN_TURN_SIGNAL_CTRL_L PIN_SHIELD_RELAY_3
/// Left turn signal indicator output pin.
#define PIN_TURN_SIGNAL_INDICATOR_L 0
/// Right turn signal switch input pin.
#define PIN_TURN_SIGNAL_SWITCH_R 17
/// Right turn signal control relay output pin.
#define PIN_TURN_SIGNAL_CTRL_R PIN_SHIELD_RELAY_4
/// Right turn signal indicator output pin.
#define PIN_TURN_SIGNAL_INDICATOR_R 1

/// Emergency switch input pin.
#define PIN_EMERGENCY_SWITCH 19

/// Motor throttle control output pin.
#define PIN_MOTOR_CTRL PIN_EXTERNAL_RELAY_1
/// Motor throttle switch input pin.
#define PIN_MOTOR_THROTTLE 12

/// Direction control 1 relay output pin.
#define PIN_DIRECTION_CONTROL_1 PIN_SHIELD_RELAY_1
/// Direction control 2 relay output pin.
#define PIN_DIRECTION_CONTROL_2 PIN_SHIELD_RELAY_2
/// Direction forward indicator output pin.
#define PIN_DIRECTION_INDICATOR_FW 8
/// Direction backward indicator output pin.
#define PIN_DIRECTION_INDICATOR_BW 9
/// Direction selector switch input pin.
#define PIN_DIRECTION_SELECTOR_SWITCH 15

/// Power on state length in milliseconds.
#define POWER_ON_TIME_MS 1200u
/// Power off state length in milliseconds.
#define POWER_OFF_TIME_MS 450u

car_system_c::car_system_c()
:       m_state(car_system_state_e::OFF),
        m_lights_switch_input(PIN_LIGHT_SWITCH, false),
        m_lights_control_output(PIN_LIGHT_CTRL, false),
        m_lights_indicator_output(PIN_LIGHT_INDICATOR, true),
        m_lights(m_lights_switch_input, m_lights_control_output,
                 m_lights_indicator_output),
        m_turn_signal_switch_input_l(PIN_TURN_SIGNAL_SWITCH_L, false),
        m_turn_signal_control_output_l(PIN_TURN_SIGNAL_CTRL_L, false),
        m_turn_signal_indicator_output_l(PIN_TURN_SIGNAL_INDICATOR_L, true),
        m_turn_signal_l(m_turn_signal_switch_input_l,
                        m_turn_signal_control_output_l,
                        m_turn_signal_indicator_output_l),
        m_turn_signal_switch_input_r(PIN_TURN_SIGNAL_SWITCH_R, false),
        m_turn_signal_control_output_r(PIN_TURN_SIGNAL_CTRL_R, false),
        m_turn_signal_indicator_output_r(PIN_TURN_SIGNAL_INDICATOR_R, true),
        m_turn_signal_r(m_turn_signal_switch_input_r,
                        m_turn_signal_control_output_r,
                        m_turn_signal_indicator_output_r),
        m_emergency_signal_toggle(PIN_EMERGENCY_SWITCH, false),
        m_emergency_signal(m_emergency_signal_toggle, m_turn_signal_l,
                           m_turn_signal_r),
        m_power_switch_input(PIN_POWER_SWITCH, false),
        m_power_indicator_output(PIN_POWER_INDICATOR, true),
        m_power(m_power_switch_input, m_power_indicator_output),
        m_motor_throttle_input(PIN_MOTOR_THROTTLE, false),
        m_motor_direction_input(PIN_DIRECTION_SELECTOR_SWITCH, false),
        m_motor_throttle_output(PIN_MOTOR_CTRL, false),
        m_motor_direction1_output(PIN_DIRECTION_CONTROL_1, false),
        m_motor_direction2_output(PIN_DIRECTION_CONTROL_2, false),
        m_motor_fw_indicator_output(PIN_DIRECTION_INDICATOR_FW, true),
        m_motor_bw_indicator_output(PIN_DIRECTION_INDICATOR_BW, true),
        m_motor(m_motor_throttle_input, m_motor_direction_input,
                m_motor_throttle_output, m_motor_direction1_output,
                m_motor_direction2_output, m_motor_fw_indicator_output,
                m_motor_bw_indicator_output)
{
}

void car_system_c::run()
{
        m_power.run();

        switch(m_state) {
        case car_system_state_e::OFF:
                // Monitor the power state. If the power is swithed on, proceed
                // to the starting up state.
                if (m_power.is_on()) {
                        // Start the timer.
                        m_timer.start();

                        // Switch all indicators on for a while. This is just
                        // for decoration (but helps also checking that
                        // everything works).
                        m_lights_indicator_output.set(false);
                        m_turn_signal_indicator_output_l.set(false);
                        m_turn_signal_indicator_output_r.set(false);
                        m_motor_fw_indicator_output.set(false);
                        m_motor_bw_indicator_output.set(false);

                        m_state = car_system_state_e::STARTING_UP;
                }
                break;

        case car_system_state_e::STARTING_UP:
                // Monitor the power state. if the power is switched off,
                // go to the shutting down state.
                if (!(m_power.is_on())) {
                        m_state = car_system_state_e::SHUTTING_DOWN;
                }

                // Wait while the startup time has passed. Switch systems on and
                // proceed to the on state.
                if (m_timer.has_expired_ms(POWER_ON_TIME_MS)) {
                        // Set all indicators off before startup.
                        m_lights_indicator_output.set(true);
                        m_turn_signal_indicator_output_l.set(true);
                        m_turn_signal_indicator_output_r.set(true);
                        m_motor_fw_indicator_output.set(true);
                        m_motor_bw_indicator_output.set(true);

                        // Switch all systems on.
                        m_lights.set_power(true);
                        m_turn_signal_l.set_power(true);
                        m_turn_signal_r.set_power(true);
                        m_emergency_signal.set_power(true);
                        m_motor.set_power(true);

                        m_state = car_system_state_e::ON;
                }
                break;

        case car_system_state_e::ON:
                // Monitor the power state. If the power is switched off,
                // go to the shutting down state.
                if (!(m_power.is_on())) {
                        // Start the timer.
                        m_timer.start();

                        // Switch all systems off.
                        m_lights.set_power(false);
                        m_turn_signal_l.set_power(false);
                        m_turn_signal_r.set_power(false);
                        m_emergency_signal.set_power(false);
                        m_motor.set_power(false);

                        // Switch all indicators on for a while.
                        m_lights_indicator_output.set(false);
                        m_turn_signal_indicator_output_l.set(false);
                        m_turn_signal_indicator_output_r.set(false);
                        m_motor_fw_indicator_output.set(false);
                        m_motor_bw_indicator_output.set(false);

                        m_state = car_system_state_e::SHUTTING_DOWN;
                }
                break;

        case car_system_state_e::SHUTTING_DOWN:
                // Wait while the shutdown time has passed. Switch indicators
                // off and proceed to the off state.
                if (m_timer.has_expired_ms(POWER_OFF_TIME_MS)) {
                        m_lights_indicator_output.set(true);
                        m_turn_signal_indicator_output_l.set(true);
                        m_turn_signal_indicator_output_r.set(true);
                        m_motor_fw_indicator_output.set(true);
                        m_motor_bw_indicator_output.set(true);

                        m_state = car_system_state_e::OFF;
                }
                break;
        }

        m_lights.run();
        m_emergency_signal.run();
        m_turn_signal_l.run();
        m_turn_signal_r.run();
        m_motor.run();
}

/* EOF */