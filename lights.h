/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#pragma once

#include "input.h"
#include "output.h"

/**
 * @brief Headlight/backlight control class.
 */
class lights_c {
public:
        /**
         * @brief Constructor of the class.
         * @param[in] switch_input A reference to a switch input pin.
         * @param[in] control_output A reference to a control output pin.
         * @param[in] indicator_output A reference to an indicator output pin.
         */
        lights_c(input_c &switch_input, output_c &control_output,
                 output_c &indicator_output);

        /**
         * @brief Run lights control at runtime.
         */
        void run();

private:
        /// Switch input.
        input_c &m_switch_input;
        /// Control output.
        output_c &m_control_output;
        /// Indicator output.
        output_c &m_indicator_output;
}; // class lights_c

/* EOF */