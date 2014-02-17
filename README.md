#Calabash Checklist

###Usage:
To check if your system is set correctly, run the command below 
```
$ ./calabash-checklist.sh
```

**Output:**
```
$ ./calabash-checklist.sh
Running Mac Calabash checklist ...
Installed rvm .... yes
Installed ruby .... yes
Environment variables $ANDROID_HOME set .... yes
Installed adb .... yes
Installed xcodebuild .... yes
Gem Installed cucumber .... yes
Gem Installed calabash-ios .... yes
Gem Installed calabash-android .... yes
```
To run the shell script in verbose mode, run the command below. Verbose mode will provide the version infomation for each command. 

```
$ ./calabash-checklist.sh -v
```

**Output:**
```
$ ./calabash-checklist.sh -v
Running Mac Calabash checklist ...
Installed rvm .... yes
 
rvm 1.17.10 (master) by Wayne E. Seguin <wayneeseguin@gmail.com>, Michal Papis <mpapis@gmail.com> [https://rvm.io/]


Installed ruby .... yes
 jruby 1.7.2 (1.9.3p327) 2013-01-04 302c706 on Java HotSpot(TM) 64-Bit Server VM 1.7.0_45-b18 +indy [darwin-x86_64]

Environment variables $ANDROID_HOME set .... yes
/Applications/Android/sdk
Installed adb .... yes
 Android Debug Bridge version 1.0.31

Installed xcodebuild .... yes
 Xcode 5.0.2
Build version 5A3005

Gem Installed cucumber .... yes
 
*** LOCAL GEMS ***

cucumber (1.3.8, 1.3.1)

Gem Installed calabash-ios .... yes
 
*** LOCAL GEMS ***

calabash-cucumber (0.9.151)

Gem Installed calabash-android .... yes
 
*** LOCAL GEMS ***

calabash-android (0.4.11, 0.4.9)

```
