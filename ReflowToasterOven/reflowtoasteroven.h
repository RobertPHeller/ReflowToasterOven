// -!- c++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : Sat Mar 24 13:05:37 2018
//  Last Modified : <180325.0802>
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

#ifndef __REFLOWTOASTEROVEN_H
#define __REFLOWTOASTEROVEN_H
#include <Arduino.h>
#include <stdio.h>
#include <EEPROM.h>
#include "Settings.h"
#include "Profile.h"

#define TMR_OVF_TIMESPAN 0.002048// timespan (in seconds) between consecutive timer overflow events
#define THERMOCOUPLE_CONSTANT 0.32 // this is derived from the AD595AQ datasheet
#define ROOM_TEMP 20.0
#define TEMP_MEASURE_CHAN A0 // AnalogRead() the ADC pin connected to the AD595AQ
#define DEMO_MODE 0 // 1 means the current temperature reading will always be overwritten to match the target temperature, note that PWM output is still active even if in DEMO mode
extern volatile char tmr_writelog_flag;
extern volatile char tmr_checktemp_flag;
extern volatile char tmr_drawlcd_flag;

void auto_go(profile_t* profile);

#define sensor_to_temperature(x) ((x)*THERMOCOUPLE_CONSTANT)

extern volatile uint16_t tmr_ovf_cnt;
extern volatile char tmr_checktemp_flag;
extern volatile char tmr_drawlcd_flag;
extern volatile char tmr_writelog_flag;

uint16_t pid(double target, double current, double * integral, double * last_error);

#endif // __REFLOWTOASTEROVEN_H

