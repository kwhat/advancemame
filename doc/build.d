Name
	build - How To Build

	This file contains the instructions to build AdvanceMAME, AdvanceMESS,
	AdvancePAC and AdvanceMENU from the source archives.

Preparing The Source
	To compile AdvanceMENU you don't need to prepare the source, they are
	already complete.

	To build one of the Advance emulators (MAME, MESS, PacMAME) you
	need first to download and unzip the emulator source with the same
	version of the Advance source. Please note that you must use the
	original emulator source, you cannot use the source of another MAME
	clone like XMAME.

	The source of the MAME emulator must be unzipped in the `src/' directory,
	the MESS source in `srcmess/' and the PacMAME source in `srcpac/'.
	For MESS you need also the additional `mess/' source directory.

	In Linux remember to unzip the original .zip archives with the
	`unzip -aa' command to convert the files from the DOS/Windows CR/LF
	format to the Unix CR format.

	The original `makefile' of the emulator must be manually deleted.

	For example the final directory tree for AdvanceMAME must be :

		./configure
		./advance/advance.mak
		./src/mame.mak

	After unpacked, you need to patch the original MAME source with the
	patch `advance/advmame.dif', the MESS source with `advance/advmess.dif' and
	the PacMAME source with `advance/advpac.dif'. If the patch isn't applied
	correctly, probably you are using the wrong version of the emulator source.

	For example the command for patching the source for AdvanceMAME in DOS is :

		cd src
		patch -p1 < ..\advance\advmame.dif

	and in Linux is :

		cd src
		patch -p1 < ../advance/advmame.dif

Configuring
	In Linux you need to run the `./configure' script with the proper options.
	You can get a complete list with the `./configure --help' command.
	Generally, you need only to specify the the --with-system option choosing
	the `sdl' or `native' system library.

	The `native' system uses the svgalib 1.9 and framebuffer graphics libraries
	and it's able to directly access and completly control the graphics output
	of your video board and automatically generate video modes with the correct
	size and frequency.

	The `sdl' system uses the LibSDL graphics library, it can be used to show
	the programs in a Window Manager, but it's unable to completly control the
	graphics output. It isn't a good choice for the fullscreen use of the
	emulator.

	If you want to customize the compilation CFLAGS you can set them before
	calling the ./configure script, for example:

		:CFLAGS="-O3 -march=i686 -fomit-frame-pointer -fstrict-aliasing" ./configure

	In a DOS/Windows you need to manually rename the `Makefile.in' file
	as `Makefile' and edit the first section to match your requirements.

Compiling
	Finally you can run `make' to compile all, and in Linux `make install'
	to install the binaries and the documentation.

Targets
	These are the defined targets in the `Makefile' :
		emu - Compile the emulator.
		cfg -  Compile `advcfg'.
		v - Compile `advv'.
		line - Compile `advline'.
		k - Compile `advk'.
		j - Compile `advj'.
		m - Compile `advm'.
		s - Compile `advs'.
		menu - Compile `advmenu'.
		all (or empty) - Compile all.
		clear - Clean all.
		install - Install all [must be root].

Requirements
	To compile the Advance projects you need the following
	software :
		:GNU gcc 2.95.3 or 3.0.4 or 3.1 (with c and c++ support)
		:NASM 0.98 (or newer)
		:zlib 1.1.3 (or newer)
		:UPX 1.20 (or newer)
		:Make 3.79.1 (or newer)

	The gcc compiler versions 2.96.x, 3.0, 3.0.1 and 3.0.2 are
	NOT supported.

	To build in DOS you need the additional following software:
		:DOS 6.22 or Windows 9x/Me
		:CWSDPMI
		:DJGPP development kit 2.03
		:DJGPP GNU binutils
		:DJGPP GNU C/C++ compiler
		:DJGPP GNU make
		:DJGPP GNU fileutils
		:DJGPP GNU patch
		:SEAL 1.0.7 + mame patch
		:Allegro 3.9.40 (or newer)

	The patched SEAL library is available at http://www.mame.net

	Ensure to have the DOS version of NASM. If you have the Windows
	version named `nasmw.exe' you must rename it as `nasm.exe' or
	change the `makefile' to use it.

	To build on Linux you need the additional following software:
		:Linux 2.4.5 (or newer)
		:SVGALIB 1.9.11 (or newer)
		:S-Lang 1.4.3 (or newer)
		:LibSDL 1.2.4 (or newer)

	Linux 2.2 is not tested, anyway it should work.

	The SVGALIB 1.4.x versions are NOT supported.
	Download the latest ALPHA 1.9.x version from http://www.svgalib.org.

	If your distribution doesn't contain the S-Lang library you
	can download it from http://www.s-lang.org/.

	Previous versions of these libraries may work, anyway they
	are not tested.

	To build on Windows you need the additional following software:
		:Windows (any version)
		:MINGW 1.1 (or newer)
		:LibSDL 1.2.4 (or newer)
