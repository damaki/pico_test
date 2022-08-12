package Tasking_Blinky is

   task Blinky with CPU => 2;
   --  Task to blink an LED, running on the RP2040's second core.

end Tasking_Blinky;
