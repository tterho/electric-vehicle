/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#pragma once

#include "input.h"
#include "output.h"
#include "software_timer.h"

/**
 * @brief Turn signal control class.
 */
class turn_signal_c {
public:
        /**
         * @brief Turn signal blinking state machine states.
         */
        enum class blink_state_e {
                SET_OFF = 0,
                OFF,
                SET_ON,
                ON
        }; // enum class blink_state_e;

        /**
         * @brief Constructor of the class.
         * @param[in] switch_input A reference to a switch input.
         * @param[in] control_output A reference to a control output.
         * @param[in] indicator_output A reference to a control output.
         */
        turn_signal_c(input_c &switch_input, output_c &control_output,
                      output_c &indicator_output);

        /**
         * @brief Set emergency state on.
         * This method overrides the input switch control.
         */
        void set_emergency_on();

        /**
         * @brief Set emergency state off.
         * This method restores the input switch control.
         */
        void set_emergency_off();

        /**
         * @brief Run turn signal control.
         */
        void run();

private:
        /**
         * @brief Get turn signal state.
         * @retval true Turn signal is on.
         * @retval false Turn signal is off.
         */
        bool is_on_priv();

        /**
         * @brief Run blinking state machine.
         */
        void run_blinking_priv();

        /// Switch input.
        input_c &m_switch_input;
        /// Control output.
        output_c &m_control_output;
        /// Indicator output.
        output_c m_indicator_output;
        /// Emergency state.
        bool m_emergency_on;
        /// Blink state.
        blink_state_e m_blink_state;
        /// Blink timer.
        software_timer_c m_timer;
}; // class turn_signal_c

/* EOF */