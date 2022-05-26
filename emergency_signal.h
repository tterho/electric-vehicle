/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#pragma once

#include "powerable.h"
#include "toggle.h"
#include "turn_signal.h"

/**
 * @brief Emergency signal control class.
 *
 * This class controls two turn signals (left and right) simultaneously for
 * signaling an emergency state.
 */
class emergency_signal_c : public powerable_c {
public:
        /**
         * @brief Constructor of the class.
         * @param[in] toggle_input A reference to a toggle switch input.
         */
        emergency_signal_c(toggle_c &toggle_input, turn_signal_c &turn_signal_l,
                           turn_signal_c &turn_signal_r);

private:
        /**
         * Set power on (implementation).
         */
        void set_power_on_impl() override;

        /**
         * Set power off (implementation).
         */
        void set_power_off_impl() override;

        /**
         * @brief Run the emergency signal control (implementation).
         */
        void run_impl() override;

        /// Toggle switch input.
        toggle_c &m_toggle;
        /// Left turn signal.
        turn_signal_c &m_turn_signal_l;
        /// Right turn signal.
        turn_signal_c &m_turn_signal_r;
}; // class emergency_signal_c

/* EOF */