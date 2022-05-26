/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#include "motor.h"

motor_c::motor_c(input_c &throttle_input, input_c &direction_input,
                 output_c &throttle_output, output_c &direction1_output,
                 output_c &direction2_output, output_c &fw_indicator_output,
                 output_c &bw_indicator_output)
:       m_state(motor_state_e::RUNNING), m_throttle_input(throttle_input),
        m_direction_input(direction_input), m_throttle_output(throttle_output),
        m_direction1_output(direction1_output),
        m_direction2_output(direction2_output),
        m_fw_indicator_output(fw_indicator_output),
        m_bw_indicator_output(bw_indicator_output)
{
}

void motor_c::set_direction_priv()
{
        bool direction;

        direction = m_direction_input.get();

        m_fw_indicator_output.set(!direction);
        m_bw_indicator_output.set(direction);
        m_direction1_output.set(!direction);
        m_direction2_output.set(!direction);
}

void motor_c::set_power_on_impl()
{
        m_state = motor_state_e::RUNNING;
        set_direction_priv();
}

void motor_c::set_power_off_impl()
{
        m_throttle_output.set(false);
        m_fw_indicator_output.set(true);
        m_bw_indicator_output.set(true);
        m_direction1_output.set(false);
        m_direction2_output.set(false);
}

void motor_c::run_impl()
{
        switch(m_state) {
        case motor_state_e::OFF :
                // Set direction only when the motor is off. This ensures that
                // the direction control relays don't break.
                set_direction_priv();

                // Monitor the throttle switch. If the throttle is pressed, go
                // to the start state.
                if (m_throttle_input.get()) {
                        m_state = motor_state_e::START;
                }
                break;

        case motor_state_e::START :
                // Set the motor power on and proceed to the running state.
                m_throttle_output.set(true);
                m_state = motor_state_e::RUNNING;
                break;

        case motor_state_e::RUNNING :
                // Monitor the throttle and go to the stop state if the throttle
                // is released.
                if (!m_throttle_input.get()) {
                        m_state = motor_state_e::STOP;
                }
                break;

        case motor_state_e::STOP :
                // Set motor power off and go to the off state.
                m_throttle_output.set(false);
                m_state = motor_state_e::OFF;
                break;
        }
}

/* EOF */