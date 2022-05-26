/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#pragma once

#include <inttypes.h>
#include <stdbool.h>

/**
 * @brief Toggled input class for Arduino.
 */
class toggle_c {
public:
        /**
         * @brief Constructor of the class.
         * @param[in] number Input number.
         * @param[in] initial_state Initial state.
         *
         * Initializes the input in pull-up mode.
         */
        explicit toggle_c(uint8_t number, bool initial_state);

        /**
         * @brief Get the current state.
         * @return The state of the toggle.
         *
         * This function resets toggle's has-state-changed state.
         */
        bool get();

        /**
         * @brief Check has the state changed since last get.
         * @retval true State has changed.
         * @retval false State has remained unchanged.
         */
        bool has_changed();

private:
        /**
         * @brief Get toggle state.
         * @return Toggle state.
         */
        bool get_priv();

        /// Input number.
        uint8_t m_number;
        /// Previous state.
        bool m_previous_state;
        /// Current toggle state.
        bool m_toggle_state;
        /// Previous toggle state.
        bool m_previous_toggle_state;
}; // class toggle_c

/* EOF */