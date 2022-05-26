/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#pragma once

#include <inttypes.h>

/**
 * @brief Software timer class for Arduino.
 */
class software_timer_c {
public:
        /**
         * @brief Default constructor of the class
         */
        software_timer_c();

        /**
         * @brief Start the timer.
         */
        void start();

        /**
         * @brief Check if the time has expired.
         * @param[in] time_ms Expiration time in milliseconds.
         * @retval true Time has expired.
         * @retval false Time is still going.
         */
        bool has_expired_ms(uint32_t time_ms);

        /**
         * @brief Check if the time has expired.
         * @param[in] time_us Expiration time in microseconds.
         * @retval true Time has expired.
         * @retval false Time is still going.
         */
        bool has_expired_us(uint32_t time_us);

private:
        /**
         * @brief Helper function to calculate difference between two
         *      timestamps.
         * @param[in] start_time Timestamp when the timer started.
         * @param[in] current_time Current timestamp.
         */
        uint32_t calc_diff_priv(uint32_t start_time, uint32_t current_time);

        /// Timestamp for millisecond timer.
        uint32_t m_timestamp_ms;
        /// Timestamp for microsecond timer.
        uint32_t m_timestamp_us;
}; // class software_timer_c

/* EOF */