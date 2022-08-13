# pico_test

This is a very simple test project to try out some multicore Ada code on the RP2040. It blinks an LED from a task running on the second core. The main (environment) task does nothing.

This project uses the `embedded-rpi-pico-smp` runtime available via the `gnat_arm_elf=12.1.0` toolchain. This runtime provides a symmetric multiprocessing (SMP) runtime that can run tasks and interrupts on both cores of the RP2040.

>:warning: This project is pinned to an unreleased version of `rp2040_hal` that supports gnat_arm_elf 12. This is needed to use the `embedded-rpi-pico-smp` runtime.