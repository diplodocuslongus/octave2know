# installation

See installNotes

# using

https://en.wikibooks.org/wiki/Octave_Programming_Tutorial/Getting_started


https://docs.octave.org/

# package

run octave
type pkg install -forge name-of-package

To install the communications package I had to install control and signal first, it didn't install dependencies automatically.

Then use pkg load name-of-package
or add in the script


## m-script (script)

if plot doesn't show after running 
use:
octave -q --persist add_gauss_noise_to_signal.m 

## graphic toolkit

graphics_toolkit

graphics_toolkit("gnuplot")

Or

graphics_toolkit("qt")

Or

graphics_toolkit("fltk")

