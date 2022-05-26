/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#include "toggle.h"

#include <Arduino.h>

/// Input pin stabilization time in milliseconds. This time prevents glitches in
/// the input to be read as accidental changes in the input state.
#define INPUT_STABILIZATION_DELAY_MS 100u

toggle_c::toggle_c(uint8_t number, bool initial_state)
:       m_number(number), m_toggle_state(initial_state),
        m_previous_toggle_state(initial_state)
{
        pinMode(m_number, INPUT_PULLUP);
        m_previous_state = !digitalRead(m_number);
}

bool toggle_c::get()
{
        m_previous_toggle_state = get_priv();
        return m_previous_toggle_state;
}

bool toggle_c::has_changed()
{
        // Check has the toggle state changed from the previous state.
        return (m_previous_toggle_state != get_priv());
}

void toggle_c::reset()
{
        m_toggle_state = false;
        m_previous_toggle_state = false;
}

bool toggle_c::get_priv()
{
        bool switch_state;

        switch_state = !digitalRead(m_number);

        if (switch_state == m_previous_state) {
                return m_toggle_state;
        }

        m_previous_state = switch_state;
        delay(INPUT_STABILIZATION_DELAY_MS);

        if (switch_state) {
                m_toggle_state = !m_toggle_state;
        }

        return m_toggle_state;
}

/* EOF */