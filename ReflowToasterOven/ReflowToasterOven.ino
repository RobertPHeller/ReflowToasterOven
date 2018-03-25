// -!- C++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : Sat Mar 24 13:01:57 2018
//  Last Modified : <180325.0839>
//
//  Description	
//
//  Notes
//
//  History
//	
/////////////////////////////////////////////////////////////////////////////
//
//    Copyright (C) 2018  Robert Heller D/B/A Deepwoods Software
//			51 Locke Hill Road
//			Wendell, MA 01379-9728
//
//    This program is free software; you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation; either version 2 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program; if not, write to the Free Software
//    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
//
// 
//
//////////////////////////////////////////////////////////////////////////////
#include <Arduino.h>
#include <stdio.h>
#include <MsTimer2.h>
#include <EEPROM.h>
#include <Adafruit_GFX.h>
#include <Adafruit_ST7735.h>
#include <SPI.h>
#include "reflowtoasteroven.h"
#include "temperaturemeasurement.h"
#include "heatingelement.h"
#include "buttons.h"
#include "Menu.h"

static const char rcsid[] PROGMEM = "@(#) : $Id$";

settings_t settings; // store this globally so it's easy to access

void tmr_init();
void auto_go(profile_t* profile);
void draw_graph();

uint16_t pid(double target, double current, double * integral, double * last_error);


Menu menu = Menu();

void setup()
{
    Serial.begin(115200);
    Serial.println(PSTR("Initializing..."));
    
    adc_init();
    buttons_init();
    heat_init();
    tmr_init();
    
    Serial.println(PSTR("Reflow Toaster Oven 1.0 Setup finished"));
    menu.main();
}

void loop() {} // Not used

// this estimates the PWM duty cycle needed to reach a certain steady temperature
// if the toaster is capable of a maximum of 300 degrees, then 100% duty cycle is used if the target temperature is 300 degrees, and 0% duty cycle is used if the target temperature is room temperature.
double approx_pwm(double target)
{
    return 65535.0 * ((target * THERMOCOUPLE_CONSTANT) / settings.max_temp);
}

uint16_t pid(double target, double current, double * integral, double * last_error)
{
    double error = target - current;
    if (target == 0)
    {
        // turn off if target temperature is 0
        
        (*integral) = 0;
        (*last_error) = error;
        return 0;
    }
    else
    {
        if (target < 0)
        {
            target = 0;
        }
        
        // calculate PID terms
        
        double p_term = settings.pid_p * error;		
        double new_integral = (*integral) + error;
        double d_term = ((*last_error) - error) * settings.pid_d;
        (*last_error) = error;
        double i_term = new_integral * settings.pid_i;
        
        double result = approx_pwm(target) + p_term + i_term + d_term;
        
        // limit the integral so it doesn't get out of control
        if ((result >= 65535.0 && new_integral < (*integral)) || (result < 0.0 && new_integral > (*integral)) || (result <= 65535.0 && result >= 0))
        {
            (*integral) = new_integral;
        }
        
        // limit the range and return the rounded result for use as the PWM OCR value
        return (uint16_t)lround(result > 65535.0 ? 65535.0 : (result < 0.0 ? 0.0 : result));
    }
}

volatile uint16_t tmr_ovf_cnt = 0;
volatile char tmr_checktemp_flag = 0;
volatile char tmr_drawlcd_flag = 0;
volatile char tmr_writelog_flag = 0;

void TIMER0_OVF_vect()
{
    heat_isr();
    get_ADC_sample();
    
    tmr_ovf_cnt++;
    if (tmr_ovf_cnt % 1024 == 0) // about 2s
    {
        tmr_ovf_cnt = 0;
        tmr_checktemp_flag = 1;
        tmr_drawlcd_flag = 1;
        tmr_writelog_flag = 1;
    }
    else if (tmr_ovf_cnt % 512 == 0) // about 1s
    {
        tmr_checktemp_flag = 1;
        tmr_writelog_flag = 1;
    }
    else if (tmr_ovf_cnt % 256 == 0) // about 0.5s
    {
        tmr_checktemp_flag = 1;
    }
}

void tmr_init()
{
    MsTimer2::set(2, TIMER0_OVF_vect);
    MsTimer2::start();
}

