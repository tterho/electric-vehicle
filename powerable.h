/*
 * Copyright (c) Tuomas Terho (tuomas@terho.net)
 * All rights reserved.
 */

#pragma once

/**
 * @brief Base class for all powerable classes.
 */
class powerable_c {
public:
        /**
         * @brief Constructor of the class.
         */
        powerable_c();

        /**
         * @brief Set power state.
         * @param[in] state Power state.
         */
        void set_power(bool state);

        /**
         * @brief Check is power on.
         * @retval true Power is on.
         * @retval false Power is off.
         */
        bool is_power_on();

        /**
         * @brief Run the object.
         */
        void run();

protected:
        /**
         * Set power on (implementation).
         */
        virtual void set_power_on_impl() = 0;

        /**
         * Set power off (implementation).
         */
        virtual void set_power_off_impl() = 0;

        /**
         * Run the object (implementation).
         */
        virtual void run_impl() = 0;

private:
        /// Power on state.
        bool m_state;
}; // class powerable_c

/* EOF */