/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#include "input.h"

#include <Arduino.h>

/// Input pin stabilization time in milliseconds. This time prevents glitches in
/// the input to be read as accidental changes in the input state.
#define INPUT_STABILIZATION_DELAY_MS 50u

input_c::input_c(uint8_t number, bool initial_state)
:       m_number(number), m_previous_state(initial_state)
{
        pinMode(m_number, INPUT_PULLUP);
}

bool input_c::get()
{
        bool current_state;

        current_state = get_priv();

        // Check if the current state has changed, and apply the stabilization
        // delay when needed.
        if (m_previous_state != current_state) {
                delay(INPUT_STABILIZATION_DELAY_MS);
                m_previous_state = current_state;
        }

        return m_previous_state;
}

bool input_c::has_changed()
{
        // Check is the digital input state changed from the previous state.
        return (m_previous_state != get_priv());
}

bool input_c::get_priv()
{
        return !digitalRead(m_number);
}

/* EOF */