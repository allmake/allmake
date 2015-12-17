# System-wide .profile for sh(1)


export GCC_VER=4.9
export KIWI_HOST=x64-osx
export KIWI_ROOT=$HOME/Projects/kiwi
export LD_LIBRARY_PATH=$KIWI_ROOT/platform/$KIWI_HOST/lib:$LD_LIBRARY_PATH
export PATH=/usr/local/bin:/usr/bin:/bin:$PATH

if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

if [ "${BASH-no}" != "no" ]; then
	[ -r /etc/bashrc ] && . /etc/bashrc
fi

#allmake-begin
export ALLMAKE_HOME=/Users/johnd/allmake
export PATH=$ALLMAKE_HOME/bin:$PATH
#allmake-end
