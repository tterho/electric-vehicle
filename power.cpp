/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#include "power.h"

#include <Arduino.h>

power_c::power_c(input_c &switch_input, output_c &indicator_output)
:       m_switch_input(switch_input), m_indicator_output(indicator_output)
{
}

bool power_c::is_on()
{
        return m_switch_input.get();
}

void power_c::run()
{
        m_indicator_output.set(!m_switch_input.get());
}

/* EOF */