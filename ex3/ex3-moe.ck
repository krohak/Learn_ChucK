
// impulse to filter to dac
Impulse i => BiQuad f => dac;

// set the filter's pole radius
.99 => f.prad;

// set equal gain zero's
1 => f.eqzs;

// initialize float variable
1.0 => float v;

// infinite time-loop
while( true )
{
    // set the current sample/impulse
    1.0 => i.next;
    // sweep the filter resonant frequency
    Std.fabs(Math.sin(v)) * 3300.0 => f.pfreq;
    // increment v
    v + .01 => v;
    // advance time
    100::ms => now;
}