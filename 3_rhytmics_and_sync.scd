// (run only if you didn't before)
p = ProxySpace.push(s.boot);

/*
let's start with basic synthesis
*/

~myVariable2.play;

~myVariable2 = { SinOsc.ar(220,mul:0.2) * LFTri.ar(1) };

/*
now for a rhytmic parts,
we probably need to keep synthesis in sync with previous definitions
this way we can make sure the next evaluation will be kept in sync
*/

~myVariable2.quant = 2;

~myVariable2 = { SinOsc.ar(440,mul:0.2) * LFTri.ar(2) };

// let's fade the definitions again
~myVariable2.fadeTime=2;

~myVariable2 = { SinOsc.ar(440,mul:0.2) * LFTri.ar(2) };

~myVariable2 = { SinOsc.ar(440,mul:0.2) + WhiteNoise.ar(0.2!2) * LFTri.ar(2) };

~myVariable2 = { (SinOsc.ar(440,mul:0.2) * LFSaw.ar(11)) + WhiteNoise.ar(0.2!2) * LFTri.ar(2) };


/*
if there are more lines of code you can use a brackets to enclose them into single
definition, it makes more the code more readable
*/

(
~myVariable2 = {
	(SinOsc.ar(440,mul:0.2) * LFSaw.ar(11)) +
	WhiteNoise.ar(0.2!2) *
	LFTri.ar(2)
};
~myVariable2.play;
)



// to stop smoothly we can fade-out like this (10 seconds)
~myVariable2.stop(10);


