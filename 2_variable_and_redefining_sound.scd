// (run only if you havent booted)
p = ProxySpace.push(s.boot);


/*
for better control over the sound synthesis, it is handy to store sound-generating function
inside of a variable - to give it certain name - so instad of stopping sound and starting again
we can now redefine one function by new definition
*/

~myVariable.play;

~myVariable = {SinOsc.ar(440!2,mul:0.2)};


/*
now we can change for instance a frequency of sound generator
*/

~myVariable = {SinOsc.ar(880!2,mul:0.2)};

/*
please notice the ! symbol (exclamation mark)
it gives you multichannel expansion (both speakers play the same)
*/

/*
now we can define a smooth transition between two state
you can imagine this as cross-fading betwee state A and B
*/

~myVariable.fadeTime = 4;

// 4 = four seconds to fade

~myVariable = {SinOsc.ar(880 / 1.5 !2,mul:0.2)};


/*
now we can try to experiment to change some arguments
you can find more help with what the arguments mean
by pressing CTRL + D (with cursor on UGen)
*/

~myVariable = {SinOsc.ar([880,440],mul:0.2)};

~myVariable = {SinOsc.ar([880,440] / 2,mul:0.2)};

~myVariable = {SinOsc.ar([880,440] / 1.5,mul:0.2)};

~myVariable = {SinOsc.ar([440,220] * 1.5,mul:0.2)};

~myVariable = {LFSaw.ar([440,220] * 1.5 + WhiteNoise.ar(0.1),mul:0.2)};



// the generator can be stopped

~myVariable.stop;

// or even removed completely from CPU computations

~myVariable.clean;
