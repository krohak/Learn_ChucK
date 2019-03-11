// connect sine oscillator to D/A convertor (sound card)
SinOsc s => dac;

// time-loop, in which the osc's frequency is changed every 100 ms
while(true){
	
	100::ms => now;
	Std.rand2f(30.0, 1000.0) => s.freq;

}
