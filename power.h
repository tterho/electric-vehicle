/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#pragma once

#include "input.h"
#include "output.h"

/**
 * @brief Main power switch and indicator control class.
 */
class power_c {
public:
        /**
         * @brief Constructor of the class.
         * @param[in] switch_input A reference to a switch input.
         * @param[in] indicator_output A reference to an indicator output.
         */
        power_c(input_c &switch_input, output_c &indicator_output);

        /**
         * @brief Check is power on.
         * @retval true Power is on.
         * @retval false Power is off.
         */
        bool is_on();

        /**
         * @brief Run power input control.
         */
        void run();

private:
        /// Switch input.
        input_c &m_switch_input;
        /// Indicator output.
        output_c &m_indicator_output;
}; // class power_c

/* EOF */