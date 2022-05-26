/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#include "emergency_signal.h"

#include <Arduino.h>

emergency_signal_c::emergency_signal_c(toggle_c &toggle_input,
                                       turn_signal_c &turn_signal_l,
                                       turn_signal_c &turn_signal_r)
:       m_toggle(toggle_input), m_turn_signal_l(turn_signal_l),
        m_turn_signal_r(turn_signal_r)
{
}

void emergency_signal_c::set_power_on_impl()
{
}

void emergency_signal_c::set_power_off_impl()
{
        m_toggle.reset();
        m_turn_signal_l.set_emergency_off();
        m_turn_signal_r.set_emergency_off();
}

void emergency_signal_c::run_impl()
{
        bool emergency_signal_on;

        if (!m_toggle.has_changed()) {
                return;
        }

        emergency_signal_on = m_toggle.get();

        if (emergency_signal_on) {
                m_turn_signal_l.set_emergency_on();
                m_turn_signal_r.set_emergency_on();
        } else {
                m_turn_signal_l.set_emergency_off();
                m_turn_signal_r.set_emergency_off();
        }
}

/* EOF */