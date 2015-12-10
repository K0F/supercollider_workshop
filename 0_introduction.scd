/*
Supercollider as a tool for live-coding performance.

Worshop led by Krystof Pesek, Jiri Rous, Katarina Gatialova

2015

To download and install supercollider on all major platofrms: (Linux, Mac, Win) follow instructions:

  /////////////////////////////////////
 // https://supercollider.github.io //
/////////////////////////////////////


*/


/*

Human readable text is called comment,
comments are either a line beginning with

// double-slash
/* */ or begiining with shlash-start ending star-slash combination


*/



/*
The most simple runnable program ever made is called "hello world",
program which prints hello world string into the console.
In superCollider It is this simple
*/

"hello world".postln;

// or even only

"hello world"


/*
Use CTRL (APPLE) + ENTER to exectute
the same combination can execute a whole block of code as following..
*/

(
"execute".postln;
"a block of code".postln;
)


/*

now we can do some math, which is substantial in sound synthesis
and computation in general

execute line by line following examples:
*/


1+1

1+1+1

10/3

pi
pi-3.14
2pi-6.28

/*
some basic functions math (unary) operations are
*/

10 + 3  // add
10 - 3  // substract
10 * 3; // multiply
10 / 3; // divide

10 ** 2; // power
10 ** 3; // power


/*
next there are also boolean (logical) operators
those are evaluations resulting binary states 0 or 1
true or false
*/

1 > 2 // is less than?
2 > 1 // is greater than?
12 == 12 // equals?

// if condition, means is something is true do this
// if it is not do something other

if (12 == 12) { "YES".postln } { "NO".postln };

if (6 == 9) { "YES".postln } { "NO".postln };

/*
Another datatype is character and string,
those can store a single letter or a whole world or sentence
*/

$a.postln
$a.ascii		// this is conversion via dot syntax
97.asAscii.dump	// conversion back to ascii

"Hello world".postln


/*
Arrays are holders for multiple values, it is often used for keeping
more values organized in the structure
*/

[1, 2, 3]
[1, 2, 3]  + 100
[1, 2, 3].reverse

// getting a single value from an array

[1, 2, 3].at(0)
[1, 2, 3].at(2)
[1, 2, 3].at(5)	// nil (there is no fifth value)

// the same, different style
[1, 2, 3][0]
[1, 2, 3][2]
[1, 2, 3][5]	// nil!



/*
Operating with arrays can be done be loops
these structure can pop individual value and
send it to further operation inside the definition
*/

[1, 2, 3].do { arg number; number.postln; }

// the result can be stored in variable..
b = [1, 2, 3].collect { arg number; number.squared; };




