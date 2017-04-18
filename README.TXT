*Please note that the "RUNME.BAT" script is automatic launched at the end of SDK installation. If you move the directory where the SDK is installed, or if you've got this file from a .zip archive you'll have to (re-)run the script. In the case of the Dependencies archive, the majority of the following will not apply. But I'm assuming you know what you do ;-)*

!If you don't, MSVC project configuration will not be correct!

check-out http://annwvyn.org/ for further information.

This SDK contains a lot of open source/openly distribuable code and binaries. Each directoy has a "LICENCE" or "COPYING" file you can check out. 
If you don't find it there, it will be located under the "_legal" directory. This is because these peices of software have been repackaged or are only redistribued in part.

Please note that the "Oculus SDK" distributed here has been recompiled with a slithly altered configuration (/MT vs /MD, it's about multithreading and DLLs with visual studio. Use Google if you're intrigued.)

REQUIREMENT
===========

Hardware
--------

1) Oculus Rift recomended specs or higher

2) Oculus Rift Headset

Software
--------

0) 64bits windows 7 or above (built on Windows 10)

1) Visual studio 2015 community edition (free to download here : https://www.visualstudio.com/)

2) The Oculus Runtime (free to download here : http://oculus.com/setup)
 
3) Up to date graphics driver from your GPU vendor

4) Optional : Git for Windows here : https://git-for-windows.github.io/)


USAGE INFORMATION
=================

1) Make sure to have MSVC 2015 (see above)

2) Copy somewhere the "template" folder you can find inside of Annwvyn directory.

3) Rename it

4) Open Game.sln 

5) Try to build the program (Ctrl + Shift + B). Try to launch it (directly from the folder or through the MSVC debugger)

6) Everything should works...

UPDATE
======

The Annwvyn folder is a git repository. You can `git pull` if you want.

I recommend you to just erase the AnnwvynSDK and download it again if the above don't work.

LINKED LIBRARIES
================

Every library in this SDK are free to redistribute in source or binary. Check each library licence for more information.

Everything is already built. Only OgreSDK is distributed on binary+header form. It's Ogre 1.9 rebuilt in 64bit.

Bullet is cloned from the GitHub repo of the project.

libsndfile is from the mega-nerd website.

The OpenAL implementation used is OpenAL-soft, a free-software implementation of OpenAL.

OIS is from the OgreSDK, it was just more convenient for me to put it outside.