with Ada.Real_Time; use Ada.Real_Time;
with RP.GPIO;
with Pico;

package body Tasking_Blinky is

   task body Blinky is
      Next : Time := Clock;

   begin
      Pico.LED.Configure (RP.GPIO.Output);

      loop
         Pico.LED.Toggle;

         Next := Next + Milliseconds (50);
         delay until Next;
      end loop;
   end Blinky;

end Tasking_Blinky;
