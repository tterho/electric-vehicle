/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#pragma once

#include <inttypes.h>
#include <stdbool.h>

/**
 * @brief Output class for Arduino.
 */
class output_c {
public:
        /**
         * @brief Constructor of the class.
         * @param[in] number Output number.
         * @param[in] initial_state Initial state.
         */
        explicit output_c(uint8_t number, bool initial_state);

        /**
         * @brief Get the current state.
         * @return The state of the output.
         */
        bool get();

        /**
         * @brief Set the state.
         * @param[in] state Output state.
         */
        void set(bool state);

private:
        /**
         * @brief Check has the state changed since last set.
         * @retval true State has changed.
         * @retval false State has remained unchanged.
         */
        bool has_changed();

        /// Output number.
        uint8_t m_number;
        /// Current state.
        bool m_current_state;
}; // class output_c

/* EOF */