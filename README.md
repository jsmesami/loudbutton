Loud Button
===========

Another Flash button that can play annoying music on your website.

Why?
----

Existing solutions are either commercial or crappy (or both) and all of them 
are way too bulky, so I cooked up my own with Flex.

Installation
------------

1. Grab the source: `git clone git://github.com/jsmesami/loudbutton.git`
2. Either go straight to the `example` directory and hit the `index.html` 
to see what you are getting, or fiddle with the source and compile it yourself 
using Flex. I use open source Flex SDK 3, you can get it [here](http://opensource.adobe.com/wiki/display/flexsdk/Download+Flex+3).

Compilation is as simple as:

	mxmlc src/loudbutton.mxml

assuming you are on a Unix devbox and Flex binaries sit in your PATH.

Usage
-----

Embed the `loudbutton.swf` in your markup - I use the glorious [swfobject](http://code.google.com/p/swfobject/) 
to get it right, see the `example/index.html`. 

Player can be fed with some flashvars:

* mp3File: "path/to/file.mp3", _(defaults to ./music.mp3)_
* autoplay: "true|false", _(play immediately? defaults to false)_
* repeat: "true|false" _(repeat until doom? defaults to false)_

Again, peek into the `example/index.html` for example usage.

Note that button size and appearance are hardcoded to keep things simple and
small. If you need to change it, you can rewrite the assets with your own graphics, 
update the size values at the very bottom of `src/loudbutton.mxml` and recompile.

Acknowledgements
----------------

I am __not__ a Flex programmer, I just figure things out to scratch my itch. If you 
happen to be an AS3 guru, you might find things I could have done better, but it 
works smoothly and I tried to follof general best coding practices learnt from other 
languages. It's a small piece of code, there are not many things to screw up here:)

Example sound `boing.mp3` was recorded by [Nik Paget-Tomlinson](http://www.nikpt.co.uk/), 
and released under [Creative Commons Attribution License](http://creativecommons.org/licenses/by/3.0/legalcode)
