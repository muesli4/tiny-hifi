I assembled all of the circuits on left-over perfboard (those where the holes are connected in one direction, i.e. lanes).

# Display and backlight

Since the 3V line doesn't provide as much power to also power the display backlight you have to get it from the 5V line with a voltage regulator. Otherwise you might fry the on-board voltage regulator.

I also use the hardware PWM of the Raspberry Pi to control the backlight. Let me know if you could improve this circuit. (This is just what I came up with with my limited skills.)

# IR receiver

This is just a typical circuit. You can get those receivers very cheap (I paid 49 cents).
