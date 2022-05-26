/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#include "software_timer.h"

#include <Arduino.h>

software_timer_c::software_timer_c()
{
}

void software_timer_c::start()
{
        // Get both timestamps at once, microseconds first for better accuracy.
        m_timestamp_us = micros();
        m_timestamp_ms = millis();
}

bool software_timer_c::has_expired_ms(uint32_t time_ms)
{
        // Get the current timestamp, calculate the difference to the timestamp
        // at start, and compare the result to the given expiration time.
        return (calc_diff_priv(m_timestamp_ms, millis()) >= time_ms);
}

bool software_timer_c::has_expired_us(uint32_t time_us)
{
        // Get the current timestamp, calculate the difference to the timestamp
        // at start, and compare the result to the given expiration time.
        return (calc_diff_priv(m_timestamp_us, micros()) >= time_us);
}

uint32_t software_timer_c::calc_diff_priv(uint32_t start_time,
        uint32_t current_time)
{
        // Calculate the difference between the start timestamp and the current
        // timestamp. Take a possible wrap-around into account (the current
        // timestamp is smaller than the start timestamp).
        return ((current_time < start_time) ?
                ((UINT32_MAX - start_time) + current_time + 1) :
                (current_time - start_time));
}

/* EOF */