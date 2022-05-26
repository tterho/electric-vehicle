/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#pragma once

#include "toggle.h"
#include "turn_signal.h"

/**
 * @brief Emergency signal control class.
 *
 * This class controls two turn signals (left and right) simultaneously for
 * signaling an emergency state.
 */
class emergency_signal_c {
public:
        /**
         * @brief Constructor of the class.
         * @param[in] toggle_input A reference to a toggle switch input.
         */
        emergency_signal_c(toggle_c &toggle_input, turn_signal_c &turn_signal_l,
                           turn_signal_c &turn_signal_r);

        /**
         * @brief Run the emergency signal control.
         */
        void run();

private:
        /// Toggle switch input.
        toggle_c &m_toggle;
        /// Left turn signal.
        turn_signal_c &m_turn_signal_l;
        /// Right turn signal.
        turn_signal_c &m_turn_signal_r;
}; // class emergency_signal_c

/* EOF */