
10 Nov 93


Listed below are the revelant OS/2 config.sys entries for JOE
v1.0.8. Please change the directory entries for whatever is
correct for your setup. Note that JOE puts its swap file in the
directory specified by "joerc" so please leave enough space for
editing those large files. Also you need to put the EMX dlls
somewhere on your libpath (not shown) or add the directory to
the libpath. You'll need to reboot for the changes to take
affect. Please note that JOE's termcap is quite different from
the GNU one and don't seem to be interchangable. EMX 0.8g was
used to port JOE to OS/2. Additionally, JOE also runs under DOS,
but not in a DOS window of OS/2. A great thanks to Eberhard
Mattes for his wonderful compiler.

========= BEGIN part of OS/2 config.sys =======================
rem joe editor stuff
set joetermcap=c:/joerc/termcap
set joerc=c:/joerc
set joeterm=ansisys
rem set number of lines and columns for odd window sizes
rem set lines=
rem set columns=
set baud=38400
========= END part of OS/2 config.sys =========================


Below is a brief description of what each setting does:

joetermcap - specifies the path and name of JOE's termcap file.
             Do not use the one from GNU. JOE's termcap is
             special.

joerc - specifies which directory has the keyboard mapping file, 
        "joerc". Also, this is the directory where the swap file
        is kept.

joeterm - the terminal type. The one that works is "ansisys"

lines - number of lines for odd window sizes

columns - number of columns for odd window sizes

baud - sets the scrolling speed of the window. 38400 means that
       the screen is directly connected.


-phil
(phil@venus.engr.ucdavis.edu)
