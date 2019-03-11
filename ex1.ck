// connect sine oscillator to D/A convertor (sound card)
SinOsc s => dac;

// allow 2 seconds to pass
2::second => now;


// loop in time
// while( true ) {
//     2::second => now;
// }


// allow 20 ms to pass
// 20::ms => now;

