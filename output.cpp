/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#include "output.h"

#include <Arduino.h>

output_c::output_c(uint8_t number, bool initial_state)
:       m_number(number), m_current_state(initial_state)
{
        pinMode(m_number, OUTPUT);
        digitalWrite(m_number, initial_state);
}

bool output_c::get()
{
        return m_current_state;
}

void output_c::set(bool state)
{
        // If state has not changed, do nothing.
        if (state == m_current_state) {
                return;
        }

        m_current_state = state;
        digitalWrite(m_number, state);
}

/* EOF */