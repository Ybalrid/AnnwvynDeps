# AnnwvynDeps
Repository to construct the Annwvyn dependency package

This is mostly for internal use as not all librearies are available here.

This is what is shipped as the "AnnwvynSDK", without the code of the engine itself. It contains either binary or source form of all the needed dependencies.

*Please note that the "RUNME.BAT" script is automatic launched at the end of SDK installation. If you move the directory where the SDK is installed, or if you've got this file from a .zip archive you'll have to (re-)run the script. In the case of the Dependencies archive, the majority of the following will not apply. But I'm assuming you know what you do ;-)*

!If you don't, MSVC project configuration will not be correct!

check-out http://annwvyn.org/ for further information.

This SDK contains a lot of open source/openly distribuable code and binaries. Each directoy has a "LICENCE" or "COPYING" file you can check out. 
If you don't find it there, it will be located under the "legal" directory. This is because these peices of software have been repackaged or are only redistribued in part.

Please note that the "Oculus SDK" distributed here has been recompiled with a slithly altered configuration (/MT vs /MD, it's about multithreading and DLLs with visual studio. Use Google if you're intrigued.)

Requirements
============

Hardware
--------

1) Oculus Rift recomended specs or higher

2) Oculus Rift Headset OR HTC-Vive headset OR any other OpenVR suported headset

Software
--------

0) 64bits windows 7 or above (built on Windows 10)

1) Visual studio 2015 community edition (free to download here : https://www.visualstudio.com/)

2) The Oculus Runtime (free to download here : http://oculus.com/setup) OR SteamVR from the Steam client (https://steampowered.com)
 
3) Up to date graphics driver from your GPU vendor (Nvidia or AMD)

4) Optional : Git for Windows here : https://git-for-windows.github.io/)


Usage
=====

1) Make sure to have MSVC 2015 (see above)

2) Copy somewhere the "template" folder you can find inside of Annwvyn directory.

3) Change the name of the project into the CMakeLists file

4) Generate a **Visual Studio 14 2015 Win64** solution

5) Try to build the program (Ctrl + Shift + B). Try to launch it (directly from the folder or through the MSVC debugger)

6) Everything should works...

Libraries
=========

Every library in this SDK are free to redistribute in source or binary form. Check each library licence for more information.

Everything is already built. Only Ogre 2.1 is distributed on binary+header form. It's Ogre 2.1 built in 64bit.

Bullet is cloned from the GitHub repo of the project.

libsndfile extracted from the installer on mega-nerd's website.

The OpenAL implementation used is OpenAL-soft, a free-software implementation of OpenAL.

OIS is from the OgreSDK dependencies, it was just more convenient for me to put it outside.

ChaiScript is from the ChaiScript git repository. Only the header where shipped here (it's an header only library)

BtOgre21 is a fork of btOgre. You can find it at BtOgre21.ybalrid.info.

TinyXML2 is here built as a static library that Annwvyn links to. 
