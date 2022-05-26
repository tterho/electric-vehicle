/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#pragma once

#include "powerable.h"
#include "input.h"
#include "output.h"

/**
 * @brief Motor direction and throttle control class.
 */
class motor_c : public powerable_c {
public:
        /**
         * @brief Motor running states.
         */
        enum class motor_state_e {
                /// Motor is off.
                OFF = 0,
                /// Motor is starting.
                START,
                /// Motor is running.
                RUNNING,
                /// Motor is stopping.
                STOP
        }; // enum class motor_state_e

        /**
         * @brief Constructor of the class.
         * @param[in] throttle_input A reference to a throttle switch input.
         * @param[in] direction_input A reference to a direction switch input.
         * @param[in] throttle_output A reference to a throttle output.
         * @param[in] direction1_output A reference to a direction control 1
         *      output.
         * @param[in] direction2_output A reference to a direction control 2
         *      output.
         * @param[in] fw_indicator_output A reference to a forward indicator
         *      output.
         * @param[in] bw_indicator_output A reference to a backward indicator
         *      output.
         */
        motor_c(input_c &throttle_input, input_c &direction_input,
                output_c &throttle_output, output_c &direction1_output,
                output_c &direction2_output, output_c &fw_indicator_output,
                output_c &bw_indicator_output);

private:
        /**
         * @brief Update and set the direction control.
         */
        void set_direction_priv();

        /**
         * Set power on (implementation).
         */
        void set_power_on_impl() override;

        /**
         * Set power off (implementation).
         */
        void set_power_off_impl() override;

        /**
         * @brief Run motor control (implementation).
         */
        void run_impl() override;

        /// Motor state.
        motor_state_e m_state;
        /// Throttle switch input.
        input_c &m_throttle_input;
        /// Direction switch input.
        input_c &m_direction_input;
        /// Throttle output.
        output_c &m_throttle_output;
        /// Direction 1 output.
        output_c &m_direction1_output;
        /// Direction 2 output.
        output_c &m_direction2_output;
        /// Forward indicator output.
        output_c &m_fw_indicator_output;
        /// Backward indicator output.
        output_c &m_bw_indicator_output;
}; // class power_c

/* EOF */