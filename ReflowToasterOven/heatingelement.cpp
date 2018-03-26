// -!- C++ -!- //////////////////////////////////////////////////////////////
//
//  System        : 
//  Module        : 
//  Object Name   : $RCSfile$
//  Revision      : $Revision$
//  Date          : $Date$
//  Author        : $Author$
//  Created By    : Robert Heller
//  Created       : Sat Mar 24 13:35:52 2018
//  Last Modified : <180326.1027>
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
//    (Portions Copyright (C) 2011 Frank Zhao)
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
#include "heatingelement.h"
static const char rcsid[] PROGMEM = "@(#) : $Id$";


void heat_init()
{
    pinMode(RELAYCTRL,OUTPUT);
}

volatile uint16_t pwm_ocr = 0;
volatile uint16_t pwm_ocr_temp = 0;
volatile uint16_t heat_isr_cnt = 0;

// this function needs to be called during the timer overflow interrupt of a 8-bit timer running at 8MHz/64
void heat_isr()
{
	if (heat_isr_cnt == 511)
	{
		heat_isr_cnt = 0;
		pwm_ocr = pwm_ocr_temp;
		if (pwm_ocr > 0)
		{
			digitalWrite(RELAYCTRL,1);
		}
		else
		{
			digitalWrite(RELAYCTRL,0);
		}
	}
	else
	{
		if (pwm_ocr <= heat_isr_cnt)
		{
			digitalWrite(RELAYCTRL,0);
		}
		
		heat_isr_cnt++;
	}
}

void heat_set(uint16_t ocr)
{
	pwm_ocr_temp = ocr >> 7;
}
