/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#include "powerable.h"

powerable_c::powerable_c()
:       m_state(false)
{
}

void powerable_c::set_power(bool state)
{
        if (m_state == state) {
                return;
        }

        m_state = state;

        if (m_state) {
                set_power_on_impl();
        } else {
                set_power_off_impl();
        }
}

bool powerable_c::is_power_on()
{
        return m_state;
}

void powerable_c::run()
{
        // Run the implementation only if the power is on.
        if (m_state) {
                run_impl();
        }
}

/* EOF */