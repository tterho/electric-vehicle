/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#pragma once

#include <inttypes.h>
#include <stdbool.h>

/**
 * @brief Input class for Arduino.
 */
class input_c {
public:
        /**
         * @brief Constructor of the class.
         * @param[in] number Input number.
         * @param[in] initial_state Initial state.
         *
         * Initializes the input in pull-up mode.
         */
        explicit input_c(uint8_t number, bool initial_state);

        /**
         * @brief Get the current state.
         * @return The state of the input.
         *
         * This function resets input's has-state-changed state.
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
         * @brief Get input state.
         * @return Input state.
         */
        bool get_priv();

        /// Input number.
        uint8_t m_number;
        /// Previous state.
        bool m_previous_state;
}; // class input_c

/* EOF */