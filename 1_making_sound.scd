
// start the audio server first (or shortcut CTRL + b)
s.boot;


// it is not important to know details about following command, it load-up a JITLIB library,
// which stands for "Just In Time Library", it suits well for purposes of livecoding
// following command just initialize a ProxySpace in which we can operate easily

p = ProxySpace.push(s);


// and voila, we can now produce first tone
// if you cannot hear any sound something is wrong with your configuration

{SinOsc.ar}.play;

// the sound can be stopped this way
// or pressing CTRL + . (dot)

s.freeAll;


// next we can add some arguments into sine wave generator:

{SinOsc.ar(220,mul:0.2)}.play;

{SinOsc.ar(440,mul:0.2)}.play;


// SinOsc is one of so called UGens (Unit Generators),
// those generators can produce various waveforms,
// to see the shape of waveform you can execute following

s.scope;



// SuperCollider can also do math operations with UGens, this way we can change
// the sound characteristic, following multiplifications produce famous
// AM Synthesis (Amplitude Modulation)

{LFSaw.ar(440,mul:0.2) * SinOsc.ar(4,mul:0.2)}.play;

// UGenys could also act as a source of nubers for other UGens
// this way we can change frequency in time and it is called FM Synthesis (Frequency Modulation)

{SinOsc.ar(SinOsc.kr(0.2)*100+220,mul:0.2)}.play;


// please notice the .ar and .kr difference
// .ar is often used for generating sound
// .kr is used mainly for controlling values

// kr has a slower rate (each 64th sample of .ar) by default
// so it is less CPU-hungry in more complex uses


