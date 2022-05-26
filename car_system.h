/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#pragma once

#include "lights.h"
#include "turn_signal.h"
#include "emergency_signal.h"
#include "motor.h"
#include "power.h"
#include "software_timer.h"

/**
 * @brief Car system class.
 */
class car_system_c {
public:
        /**
         * @brief Car system state machine states.
         */
        enum class car_system_state_e {
                /// Car system is powered off.
                OFF = 0,
                /// Powering on.
                STARTING_UP,
                /// Power is on.
                ON,
                /// Powering off.
                SHUTTING_DOWN
        }; // enum class car_system_state_e

        /**
         * @brief Constructor of the class.
         */
        car_system_c();

        /**
         * @brief Run the car system.
         */
        void run();

private:
        /// Car system state.
        car_system_state_e m_state;

        /// Light switch input.
        input_c m_lights_switch_input;
        /// Light control output.
        output_c m_lights_control_output;
        /// Light indicator output.
        output_c m_lights_indicator_output;
        /// Light controller.
        lights_c m_lights;

        /// Left turn signal switch input.
        input_c m_turn_signal_switch_input_l;
        /// Left turn signal control output.
        output_c m_turn_signal_control_output_l;
        /// Left turn signal indicator output.
        output_c m_turn_signal_indicator_output_l;
        /// Left turn signal controller.
        turn_signal_c m_turn_signal_l;

        /// Right turn signal switch input.
        input_c m_turn_signal_switch_input_r;
        /// Right turn signal control output.
        output_c m_turn_signal_control_output_r;
        /// Right turn signal indicator output.
        output_c m_turn_signal_indicator_output_r;
        /// Right turn signal controller.
        turn_signal_c m_turn_signal_r;

        /// Emergency signal toggle input.
        toggle_c m_emergency_signal_toggle;
        /// Emergency signal controller.
        emergency_signal_c m_emergency_signal;

        /// Power switch input.
        input_c m_power_switch_input;
        /// Power indicator output.
        output_c m_power_indicator_output;
        /// Power controller.
        power_c m_power;

        /// Motor throttle switch input.
        input_c m_motor_throttle_input;
        /// Motor direction switch input.
        input_c m_motor_direction_input;
        /// Motor throttle output.
        output_c m_motor_throttle_output;
        /// Motor direction relay 1 output.
        output_c m_motor_direction1_output;
        /// Motor direction relay 2 output.
        output_c m_motor_direction2_output;
        /// Motor forward indicator output.
        output_c m_motor_fw_indicator_output;
        /// Motor backward indicator output.
        output_c m_motor_bw_indicator_output;
        /// Motor controller.
        motor_c m_motor;

        /// Software timer for startup timing.
        software_timer_c m_timer;
}; // class car_system_c

/* EOF */