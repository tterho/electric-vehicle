/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#include "turn_signal.h"

#include <Arduino.h>

/// Blinking off time in milliseconds.
#define BLINKING_OFF_TIME_MS 400
/// Blinking on time in milliseconds.
#define BLINKING_ON_TIME_MS 400

turn_signal_c::turn_signal_c(input_c &switch_input, output_c &control_output,
                             output_c &indicator_output)
:       m_switch_input(switch_input), m_control_output(control_output),
        m_indicator_output(indicator_output), m_emergency_on(false),
        m_blink_state(blink_state_e::SET_OFF)
{
}

void turn_signal_c::set_emergency_on()
{
        m_emergency_on = true;
        m_blink_state = blink_state_e::SET_OFF;
}

void turn_signal_c::set_emergency_off()
{
        m_emergency_on = false;
        m_blink_state = blink_state_e::SET_OFF;
}

void turn_signal_c::run()
{
        bool is_on;

        is_on = is_on_priv();

        if (is_on) {
                run_blinking_priv();
        } else {
                m_blink_state = blink_state_e::SET_OFF;
                m_control_output.set(0);
                m_indicator_output.set(1);
        }
}

bool turn_signal_c::is_on_priv()
{
        if (m_emergency_on) {
                return true;
        } else {
                return m_switch_input.get();
        }
}

void turn_signal_c::run_blinking_priv()
{
        switch(m_blink_state) {
        case blink_state_e::OFF :
                if (m_timer.has_expired_ms(BLINKING_OFF_TIME_MS)) {
                        m_blink_state = blink_state_e::SET_ON;
                }
                break;

        case blink_state_e::SET_ON :
                m_timer.start();
                m_control_output.set(1);
                m_indicator_output.set(0);
                m_blink_state = blink_state_e::ON;
                break;

        case blink_state_e::ON :
                if (m_timer.has_expired_ms(BLINKING_ON_TIME_MS)) {
                        m_blink_state = blink_state_e::SET_OFF;
                }
                break;

        case blink_state_e::SET_OFF :
                m_timer.start();
                m_control_output.set(0);
                m_indicator_output.set(1);
                m_blink_state = blink_state_e::OFF;
                break;
        }
}

/* EOF */