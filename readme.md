# pico_test

This is a very simple test project to try out some multicore Ada code on the RP2040. It blinks an LED from a task running on the second core. The main (environment) task does nothing.

This project uses the `embedded-rpi-pico-smp` runtime available via the `gnat_arm_elf=12.1.0` toolchain. This runtime provides a symmetric multiprocessing (SMP) runtime that can run tasks and interrupts on both cores of the RP2040.

>:warning: This project is pinned to an unreleased version of `rp2040_hal` that supports gnat_arm_elf 12. At the time of writing, this also requires a modification to the `rp2040_hal` project to add a file called `rp_interrupts.ads` under `alire/cache/pins/rp2040_hal/src/drivers/` with the following content:

```ada
with System.BB.Interrupts;
package RP_Interrupts renames System.BB.Interrupts;
```

Once `rp_interrupts.ads` has been added to `rp2040_hal`, you should be able to build this project via `alr build`. You may be prompted to install the correct toolchain, i.e. `gnat_arm_elf=12.1.0`.