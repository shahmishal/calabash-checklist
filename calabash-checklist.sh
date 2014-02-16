#!/bin/bash
## USAGE: ./calabash-mac-checklist.sh
## DEBUG: ./calabash-mac-checklist.sh -v
#


function testInstalled() {

    echo -n "Installed $1 .... "
	command -v $1 >/dev/null
	if [ $? -eq 1 ]; then
		echo -e "\033[31m no  (not installed or not in your PATH) \033[0m";
	else
		echo -e "\033[32myes\033[0m"
		if [ "$vflag" = "on" ]; then
			echo -n -e "\033[37m "
			$1 $2
			echo -e "\033[0m"
		fi
	fi
	
}
function testGemInstalled() {

    echo -n "Gem Installed $1 .... "
	command -v $1 >/dev/null
	if [ $? -eq 1 ]; then
		echo -e "\033[31m no  (gem install $2) \033[0m";
	else
		echo -e "\033[32myes\033[0m"
		if [ "$vflag" = "on" ]; then
			echo -n -e "\033[37m "
			gem list $2 
			echo -e "\033[0m"
		fi
	fi
	
}

function testIsPathSet() {
  echo -n "Environment variables \$$1 set .... "
  	if [ -z "$2" ]; then
		echo -e "\033[31m no \033[0m";
	else 
		echo -e "\033[32myes\033[0m";
		if [ "$vflag" = "on" ]; then
			echo -e "\033[37m$2\033[0m"
		fi
   	fi
   	
}

vflag=""
while [ $# -gt 0 ]
do
    case "$1" in
    -v)	vflag=on;;	    
	--)	shift; break;;
	-*)
        echo >&2 "Usage: $0 [-v]"
		exit 1;;
	*)	break;;	
    esac
    shift
done

#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
    echo "Running Mac Calabash checklist ..."

	testInstalled rvm --version
	testInstalled ruby --version
	testIsPathSet ANDROID_HOME $ANDROID_HOME
	testInstalled adb version
	testInstalled xcodebuild -version
	testGemInstalled cucumber cucumber
	testGemInstalled calabash-ios calabash-cucumber
	testGemInstalled calabash-android calabash-android
      
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "Running Linux Calabash checklist ..."
    echo "TODO!"
	# testInstalled rvm --version
	# testInstalled ruby --version
	# testIsPathSet ANDROID_HOME $ANDROID_HOME
	# testInstalled adb version
	# testGemInstalled cucumber cucumber
	# testGemInstalled calabash-android calabash-android

elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    echo "Running Windows Calabash checklist ..."
    echo "TODO!"
	# testInstalled rvm --version
	# testInstalled ruby --version
	# testIsPathSet ANDROID_HOME $ANDROID_HOME
	# testInstalled adb version
	# testGemInstalled cucumber cucumber
	# testGemInstalled calabash-android calabash-android
fi

exit 0
