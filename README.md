 allmake V1.0.0
------------------------------------------------------------------- 
	Description: The cross platform development toolkit - allmake
	Author: John Deng (john.deng@outlook.com)
	Updated 2015.12.12
  
Prerequisites:
-------------------------------------------------------------------
	Windows: 
		Make sure you have minsys / minsys2, or Cygwin installed

	Linux: 
		Any linux distribution should work.

	Mac OS X:
		Please install gcc first,
			brew install gcc	


Installation:
-------------------------------------------------------------------

	git clone https://github.com/allmake/allmake.git
	cd allmake
	sudo ./bin/allmake -i

Getting started:
-------------------------------------------------------------------
	Afer installed allmake, reboot the computer.
	Then allmake is ready to use, simply type below command to start you project

	- Generating c/c++ source code and Cross compiling a new project.

	mkdir -p ~/workspace/demo
	cd ~/workspace/demo
	allmake add plat=x86_64-linux
	allmake clean all release bin

	./build/x86_64-linux-gnu/obj/demo

		You will see below message

		demo V1.0.0.151212


	- Cross compiling third party source code for arm linux (arm-brcm-linux-gnueabi) using allmake 
	
	1. configure (Do it only once)

	zlib:
		allmake add plat=brcm exports='cc ar' cwd

	openssl:
		allmake add plat=brcm exports='cc ar ld strip rainlib' options='shared no-asm -DL_ENDIAN linux-generic32' cwd

	openssh:
		allmake add cross plat=brcm options='--with-libs --with-zlib=$prefix --with-ssl-dir=$prefix --disable-etc-default-login --prefix=/usr' exports='cc ar'

	libffi:
		add cross plat=brcm

	glib:
		allmake add cross plat=brcm options='glib_cv_stack_grows=no glib_cv_uscore=no ac_cv_func_posix_getpwuid_r=yes ac_cv_func_posix_getgrgid_r=yes ac_cv_lib_rt_clock_gettime=no glib_cv_monotoni c_clock=yes ZLIB_CFLAGS=-I$prefix/include ZLIB_LIBS="-L$prefix/lib -lz" LIBFFI_CFLAGS=-I$prefix/include LIBFFI_LIBS="-L$prefix/lib -lffi" '

	libpng: (tip: install zlib to sysroot under toolchain first)
		add cross plat=brcm

	libjpeg:
		add cross plat=brcm options='--enable-shared --disable-static'


	2. make and install	

		allmake clean all install

Usage: 
-------------------------------------------------------------------
	The usage is as same as make but with more powerful features.

	options:
		add     : add a new platform
		update  : update settings
		clean   : clean objects
		plat    : specify platform name under toolchian, you may just type the key word instead of whole name, without this option, allmake will make all platfroms.
		all     : make all source codes
		release : make release with O2 (optimization) option
		bin     : output binary, it will output shared library file (linux: .so, mac os x: .dylib, windows: .dll) without this option
		install : install target to ${ALLMAKE_HOME}/platfrom/
		plat    : specify platfrom, make single platform instead of all, e.g. allmake clean all plat=x86
		options : options for third party source code, e.g. allmake add plat=brcm options='--with-zlib --with-png '

	Examples:      
		allmake add plat=x86
		allmake add winapi
		allmake update ver=1.0.1     
		allmake plat=x86 uiclean ui
		allmake plat=x86 clean
		allmake plat=x86 clean all
		allmake plat=x86 clean all install
		allmake plat=x86 install
		allmake plat=x86 clean all
		allmake plat=x86 clean all bin
		allmake plat=x86 clean all test
