# oscilloscope_final
FPGA Oscilloscope project for EE314 Digital Electronics Laboratory. 

Yıldırım Batuhan Yılmaz
Mert Şişman

vga_test2: Top-level entity that combines all modules\\
ampfind2: Computation unit that calculates rms, mean, amplitude and frequency
ADC: ADC interface
storage: RAM module that stores the waveform which will be displayed.
static: Determines pixels for static components of interface such as graph lines, letters.
dynamic2: Displays measurement values.
vga: VGA interface.
