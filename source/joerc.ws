                         Initialization file for JOE

 JOE looks for this file in:
	1 - .joerc
	2 - $HOME/.joerc
	3 - /usr/local/lib/joerc

 FIRST SECTION: Default global options:

 Put each option you want set in the first column:

 -mid		Cursor is recentered when scrolling is necessary
 -asis		Characters 160 - 254 shown as-is
 -stacol	Column number in status line
 -starow	Row number in status line
 -force		Force final newline when files are saved
 -help		Start with help on
 -pg nnn	No. lines to keep for PgUp/PgDn
 -gtab nnn	Default tab width for prompt windows

 SECOND SECTION: File name dependant local option settings:

 Each line with '*' in the first column indicates the modes which should be
 files which match the regular expression.  If more than one regular
 expression matches the file name, than the last matching one is chosen.

 Here is a list of modes which can be set:

	-wordwrap		Wordwrap
	-autoindent		Auto indent
	-overwrite		Overtype mode
	-lmargin nnn		Left margin
	-rmargin nnn		Right margin
	-tab nnn		Tab width
	-indentc nnn		Indentation character (32 for space, 9 for tab)
	-istep nnn		Number of indentation columns
*
-wordwrap
-rmargin 065
-stacol
-starow
-nobackups
-lightoff

*.c
-autoindent

*.h
-autoindent

*akefile
*AKEFILE
*joerc

*.p
-autoindent

 THIRD SECTION: Named help screens:

 Use \i to turn on/off inverse video
 Use \u to turn on/off underline

{Basic
\i   Help Screen    turn off with ^KH                                            \i
\i \i\uCURSOR\u           \uGO TO\u            \uBLOCK\u      \uDELETE\u   \uMISC\u         \uEXIT\u      \i \i
\i \i^S left ^D right ^R  prev. screen ^KB begin  ^D char. ^B  reformat ^KX save  \i \i
\i \i^E up   ^X down  ^C  next screen  ^KK end    ^Y line  ^V  overtype ^KQ abort \i \i
\i \i^F previous word ^QS beg. of line ^KV move   ^T >word `   Ctrl-    ^KZ shell \i \i
\i \i^A next word     ^QD end of line  ^KC copy   ^O word< ^\\  Meta-    \uFILE\u      \i \i
\i \i\uSEARCH\u           ^QR top of file  ^KW file   ^J >line ^R  retype   ^KE new   \i \i
\i \i^QF find text    ^QC end of file  ^KY delete ^_ undo  ^@  insert   ^KR insert\i \i
\i \i^L  find next    ^KL to line No.  ^K/ filter ^^ redo               ^KD save  \i \i
}

{Windows
\i   Help Screen    turn off with ^KH                                            \i
\i \i^KO Split the window into two.  You can then use ^KE to load a file into the \i \i
\i \i    new window.                                                              \i \i
\i \i^KG Make current window bigger         ^KT Make current window smaller       \i \i
\i \i^KN Go to the window below             ^KP Go to the window above            \i \i
\i \i^C  Eliminate the current window       ^KI Show all windows / Show one window\i \i
}

{Advanced
\i   Help Screen    turn off with ^KH                                            \i
\i \i ^K \\     repeat next command nn times     ^G   goto matching ( [ {          \i \i
\i \i ^K SPACE show position status             ^K-  goto prevous place in        \i \i
\i \i ^K [ 0-9 begin recording macro n               position history             \i \i
\i \i ^K ]     stop recording                   ^K=  goto next place              \i \i
\i \i ^K 0-9   play macro n                     ^K,  indent marked block less     \i \i
\i \i ^K A     center line                      ^K.  indent marked block more     \i \i
\i \i ^T X     rectangle mode                   ^K;  tag search                   \i \i
\i \i ^K '     terminal window                                                    \i \i
}

{Options
\i   Help Screen    turn off with ^KH                                            \i
\i \i                                Mode Settings                                \i \i
\i \i                                                                             \i \i
\i \i ^V  Insert/Overtype             ^OM Recenter cursor when it goes off window \i \i
\i \i ^OA Autoindent on/off           ^OF Force final NL when files are written   \i \i
\i \i ^OW Wordwrap on/off             ^OH Display characters above 127 as-is      \i \i
\i \i ^OL Left margin                 ^ON Show line number on status line         \i \i
\i \i ^OR Right margin                ^OC Show column number on status line       \i \i
\i \i ^OP No. PgUp/PgDn Lines         ^OD Tab width                               \i \i
\i \i ^OK Indent character            ^OI Indent step column width                \i \i
\i \i ^OX Rectangle mode                                                          \i \i
}

{Search
\i   Help Screen    turn off with ^KH                                            \i
\i \iSpecial search sequences:                                                    \i \i
\i \i    \\^     matches beginning of line     \\$     matches end of line          \i \i
\i \i    \\<     matches beginning of word     \\>     matches end of word          \i \i
\i \i    \\?     matches any single character  \\*     matches 0 or more characters \i \i
\i \i    \\c     matches balanced C expression \\\\     matches a \\                  \i \i
\i \i    \\[..]  matches one of a set          \\n     matches a newline            \i \i
\i \i    \\+     matches 0 or more of the character which follows the \\+           \i \i
\i \iSpecial replace sequences:                                                   \i \i
\i \i    \\&     replaced with text which matched search string                    \i \i
\i \i    \\0 - 9 replaced with text which matched Nth \\*, \\?, \\c, \\+, or \\[..]     \i \i
\i \i    \\\\     replaced with \\               \\n     replaced with newline        \i \i
}

{Names
\i   Help Screen    turn off with ^KH                                            \i
\i \i Hit TAB at file name prompts to generate menu of file names                 \i \i
\i \i Or use up/down keys to access history of previously entered names           \i \i
\i \i Special file names:                                                         \i \i
\i \i      !command                 Pipe in/out of a shell command                \i \i
\i \i      >>filename               Append to a file                              \i \i
\i \i      -                        Read/Write to/from standard I/O               \i \i
\i \i      filename,START,SIZE      Read/Write a part of a file/device            \i \i
\i \i          Give START/SIZE in decimal (255), octal (0377) or hex (0xFF)       \i \i
}

{Joe
\i   Help Screen    turn off with ^KH                                            \i
\i \i Joe Allen's email address:  'jhallen@world.std.com' or                      \i \i
\i \i 'rcarter' on the VWIS Linux BBS (508)793-9568                               \i \i
}

 FOURTH SECTION: Key bindings:

 :main are the main editing bindings
 :fprompt are file name prompt bindings
 :prompt are other prompt bindings
 :tab are file menu bindings
 :help are help menu bindings

 Use ^@ through ^_ and ^? for Ctrl chars
 Use SP for space
 Use a TO b to generate a range of characters
 Use UP DOWN RIGHT LEFT HOME END INS DEL PGUP PGDN
     F1 F2 F3 F4 F5 F6 F7 F8 F9 F0 F10
     for the corresponding termcap key sequence definitions

 Simple macros can be made by comma seperating 2 or more command names.  For
 example:

 bof,bol	^T Z		Goto beginning of last line

 Also quoted matter is typed in literally:

 bol,">",dnarw	F1		Quote news article line

:main

type		^I		Tab
quote8		^\		Quote Meta chars
type		SP TO �		Typeable characters
quote		`		Quote Ctrl chars

abort		^K Q		Abort window
abort		^K ^Q
abort		^K q
arg		^K \		Repeat count
backs		^?		Backspace
backs		^H
backw		^O		Backspace word
bknd		^K '		Shell window
blkcpy		^K C		Copy marked block
blkcpy		^K ^C
blkcpy		^K c
blkdel		^K Y		Delete marked block
blkdel		^K ^Y
blkdel		^K y
blkmove		^K V		Move marked block
blkmove		^K ^V
blkmove		^K v
blksave		^K W		Save marked block
blksave		^K ^W
blksave		^K w
bof		^Q R		Goto beginning of file
bof		^Q ^R
bof		^Q r
bol		HOME		Goto beginning of line
bol		^Q s
bol		^Q S
bol		^Q ^S
center		^K A		Center line
center		^K ^A
center		^K a
delch		DEL		Delete character
delch		^G
deleol		^J		Delete to end of line
dellin		^Y		Delete entire line
delw		^T		Delete word to right
dnarw		DOWN		Go down
dnarw		^X
dnarw		^[ O B
dnarw		^[ [ B
edit		^K E		Edit a file
edit		^K ^E
edit		^K e
eof		^Q C		Go to end of file
eof		^Q ^C
eof		^Q c
eol		END		Go to end of line
eol		^Q d
eol		^Q D
eol		^Q ^D
explode		^K I		Show one window / Show all windows
explode		^K ^I
explode		^K i
exsave		^K X		Save and exit
exsave		^K ^X
exsave		^K x
ffirst		^Q F		Find first
ffirst		^Q ^F
ffirst		^Q f
filt		^K /		Filter block
fnext		^L		Find next
format		^B		Format paragraph
groww		^K G		Grow window
groww		^K ^G
groww		^K g
help		^K H		Help
help		^K ^H
help		^K h
iasis		^O H		Characters 160-254 shown as-is
iasis		^O ^H
iasis		^O h
iforce		^O F		Force final newline
iforce		^O ^F
iforce		^O f
iindent		^O A		Autoindent on/off
iindent		^O ^A
iindent		^O a
iindentc	^O k
iindentc	^O K
iindentc	^O ^K
ilmargin	^O L		Set left margin
ilmargin	^O ^L
ilmargin	^O l
imid		^O M		Center cursor when scrolling
imid		^O ^M
imid		^O m
insc		INS		Insert a space
insc		^@
insf		^K R		Insert a file
insf		^K ^R
insf		^K r
ipgamnt		^O P		No. lines to keep for PGUP/PGDN
ipgamnt		^O ^P
ipgamnt		^O p
irmargin	^O R		Set right margin
irmargin	^O ^R
irmargin	^O r
istacol		^O C		Column number on status line
istacol		^O ^C
istacol		^O c
istarow		^O N		Row number on status line
istarow		^O ^N
istarow		^O n
iistep		^O i
iistep		^O I
iistep		^O ^I
isquare		^O x
isquare		^O X
isquare		^O ^X
itab		^O D
itab		^O ^D
itab		^O d
itype		^V		Insert/Overtype
itype		^O ^T
itype		^O t
iwrap		^O W		Word wrap
iwrap		^O ^W
iwrap		^O w
lindent		^K ,		Indent to left
line		^K L		Goto line no.
line		^K ^L
line		^K l
ltarw		LEFT		Go left
ltarw		^S
ltarw		^[ O D
ltarw		^[ [ D
markb		^K B		Set beginning of marked block
markb		^K ^B
markb		^K b
markk		^K K		Set end of marked block
markk		^K ^K
markk		^K k
nextpos		^K =		Goto next position in position history
nextw		^K N		Goto window below
nextw		^K ^N
nextw		^K n
nextword	^F		Goto next word
open		^]		Split line
pgdn		PGDN		Screen down
pgdn		^C
pgup		PGUP		Screen up
pgup		^R
play		^K 0 TO 9	Execute macro
prevpos		^K -
prevw		^K P		Window above
prevw		^K ^P
prevw		^K p
prevword	^A		Previous word
record		^K [		Record macro
redo		^^		Redo changes
retype		^=		Refresh screen
rindent		^K .		Indent to right
rtarw		RIGHT		Go right
rtarw		^D
rtarw		^[ O C
rtarw		^[ [ C
rtn		^M		Return
save		^K D		Save file
save		^K S
save		^K ^D
save		^K ^S
save		^K d
save		^K s
shell		^K Z		Shell escape/Suspend
shell		^K ^Z
shell		^K z
shrinkw		^K T		Shrink window
shrinkw		^K ^T
shrinkw		^K t
splitw		^K O		Split window
splitw		^K ^O
splitw		^K o
stat		^K SP		Show status
stop		^K ]		Stop recording macro
tag		^K ;
tomatch		^G		Goto matching parenthasis
undo		^_		Undo changes
uparw		UP		Go up
uparw		^E
uparw		^[ O A
uparw		^[ [ A

:prompt

type		^I		Tab
quote8		^\		Quote Meta chars
type		SP TO �		Typeable characters
quote		`		Quote Ctrl chars

abortpw		^K Q		Abort window
abortpw		^K ^Q
abortpw		^K q
arg		^K \		Repeat count
backs		^?		Backspace
backs		^H
backw		^O		Backspace word
blkcpy		^K C		Copy marked block
blkcpy		^K ^C
blkcpy		^K c
blkdel		^K Y		Delete marked block
blkdel		^K ^Y
blkdel		^K y
blkmove		^K V		Move marked block
blkmove		^K ^V
blkmove		^K v
blksave		^K W		Save marked block
blksave		^K ^W
blksave		^K w
bof		^Q R		Goto beginning of file
bof		^Q ^R
bof		^Q r
bol		HOME		Goto beginning of line
bol		^A
center		^K A		Center line
center		^K ^A
center		^K a
delch		DEL		Delete character
delch		^G
deleol		^J		Delete to end of line
dellin		^Y		Delete entire line
delw		^T		Delete word to right
dnarw		DOWN		Go down
dnarw		^X
dnarw		^[ O B
dnarw		^[ [ B
edit		^Q C		Edit a file
edit		^Q ^C
edit		^Q c
eof		^K V		Go to end of file
eof		^K ^V
eof		^K v
eol		END		Go to end of line
eol		^Q d
eol		^Q D
eol		^Q ^D
explode		^K I		Show one window / Show all windows
explode		^K ^I
explode		^K i
exsave		^K X		Save and exit
exsave		^K ^X
exsave		^K x
ffirst		^Q F		Find first
ffirst		^Q ^F
ffirst		^Q f
filt		^K /		Filter block
fnext		^L		Find next
format		^B 		Format paragraph
groww		^K G		Grow window
groww		^K ^G
groww		^K g
help		^K H		Help
help		^K ^H
help		^K h
iasis		^O H		Characters 160-254 shown as-is
iasis		^O ^H
iasis		^O h
iforce		^O F		Force final newline
iforce		^O ^F
iforce		^O f
iindent		^O A		Autoindent on/off
iindent		^O ^A
iindent		^O a
iindentc	^O k
iindentc	^O K
iindentc	^O ^K
ilmargin	^O L		Set left margin
ilmargin	^O ^L
ilmargin	^O l
imid		^O M		Center cursor when scrolling
imid		^O ^M
imid		^O m
insc		INS		Insert a space
insc		^@
insf		^K R		Insert a file
insf		^K ^R
insf		^K r
ipgamnt		^O P		No. lines to keep for PGUP/PGDN
ipgamnt		^O ^P
ipgamnt		^O p
irmargin	^O R		Set right margin
irmargin	^O ^R
irmargin	^O r
istacol		^O C		Column number on status line
istacol		^O ^C
istacol		^O c
istarow		^O N		Row number on status line
istarow		^O ^N
istarow		^O n
iistep		^O i
iistep		^O I
iistep		^O ^I
isquare		^O x
isquare		^O X
isquare		^O ^X
itab		^O D
itab		^O ^D
itab		^O d
itype		^O T		Insert/Overtype
itype		^O ^T
itype		^O t
iwrap		^O W		Word wrap
iwrap		^O ^W
iwrap		^O w
lindent		^K ,		Indent to left
line		^K L		Goto line no.
line		^K ^L
line		^K l
ltarw		LEFT		Go left
ltarw		^S
ltarw		^[ O D
ltarw		^[ [ D
markb		^K B		Set beginning of marked block
markb		^K ^B
markb		^K b
markk		^K K		Set end of marked block
markk		^K ^K
markk		^K k
nextpos		^K =		Goto next position in position history
nextw		^K N		Goto window below
nextw		^K ^N
nextw		^K n
nextword	^F		Goto next word
open		^]		Split line
pgdn		PGDN		Screen down
pgdn		^C
pgup		PGUP		Screen up
pgup		^R
play		^K 0 TO 9	Execute macro
prevpos		^K -
prevw		^K P		Window above
prevw		^K ^P
prevw		^K p
prevword	^A		Previous word
record		^K [		Record macro
redo		^^		Redo changes
retype		^=		Refresh screen
rindent		^K .		Indent to right
rtarw		RIGHT		Go right
rtarw		^D
rtarw		^[ O C
rtarw		^[ [ C
rtnpw		^M		Return
save		^K D		Save file
save		^K S
save		^K ^D
save		^K ^S
save		^K d
save		^K s
shell		^K Z		Shell escape/Suspend
shell		^K ^Z
shell		^K z
shrinkw		^K T		Shrink window
shrinkw		^K ^T
shrinkw		^K t
splitw		^K O		Split window
splitw		^K ^O
splitw		^K o
stat		^K SP		Show status
stop		^K ]		Stop recording macro
tag		^K ;
tomatch		^G		Goto matching parenthasis
undo		^_		Undo changes
uparw		UP		Go up
uparw		^E
uparw		^[ O A
uparw		^[ [ A

:fprompt

complete	^I		Complete file name
quote8		^\		Quote Meta chars
type		SP TO �		Typeable characters
quote		`		Quote Ctrl chars

abortpw		^K Q 		Abort window
abortpw		^K ^Q
abortpw		^K q
arg		^K \		Repeat count
backs		^?		Backspace
backs		^H
backw		^O		Backspace word
blkcpy		^K C		Copy marked block
blkcpy		^K ^C
blkcpy		^K c
blkdel		^K Y		Delete marked block
blkdel		^K ^Y
blkdel		^K y
blkmove		^K V		Move marked block
blkmove		^K ^V
blkmove		^K v
blksave		^K W		Save marked block
blksave		^K ^W
blksave		^K w
bof		^Q R		Goto beginning of file
bof		^Q ^R
bof		^Q r
bol		HOME		Goto beginning of line
bol		^Q s
bol		^Q S
bol		^Q ^S
center		^K A		Center line
center		^K ^A
center		^K a
delch		DEL		Delete character
delch		^G
deleol		^J		Delete to end of line
dellin		^Y		Delete entire line
delw		^T		Delete word to right
dnarw		DOWN		Go down
dnarw		^X
dnarw		^[ O B
dnarw		^[ [ B
edit		^K E		Edit a file
edit		^K ^E
edit		^K e
eof		^Q C		Go to end of file
eof		^Q ^C
eof		^Q c
eol		END		Go to end of line
eol		^Q D
eol		^Q d
eol		^Q ^D
explode		^K I		Show one window / Show all windows
explode		^K ^I
explode		^K i
exsave		^K X		Save and exit
exsave		^K ^X
exsave		^K x
ffirst		^Q F		Find first
ffirst		^Q ^F
ffirst		^Q f
filt		^K /		Filter block
fnext		^L		Find next
format		^B		Format paragraph
groww		^K G		Grow window
groww		^K ^G
groww		^K g
help		^K H		Help
help		^K ^H
help		^K h
iasis		^O H		Characters 160-254 shown as-is
iasis		^O ^H
iasis		^O h
iforce		^O F		Force final newline
iforce		^O ^F
iforce		^O f
iindent		^O A		Autoindent on/off
iindent		^O ^A
iindent		^O a
iindentc	^O k
iindentc	^O K
iindentc	^O ^K
ilmargin	^O L		Set left margin
ilmargin	^O ^L
ilmargin	^O l
imid		^O M		Center cursor when scrolling
imid		^O ^M
imid		^O m
insc		INS		Insert a space
insc		^@
insf		^K R		Insert a file
insf		^K ^R
insf		^K r
ipgamnt		^O P		No. lines to keep for PGUP/PGDN
ipgamnt		^O ^P
ipgamnt		^O p
irmargin	^O R		Set right margin
irmargin	^O ^R
irmargin	^O r
istacol		^O C		Column number on status line
istacol		^O ^C
istacol		^O c
istarow		^O N		Row number on status line
istarow		^O ^N
istarow		^O n
iistep		^O i
iistep		^O I
iistep		^O ^I
isquare		^O x
isquare		^O X
isquare		^O ^X
itab		^O D
itab		^O ^D
itab		^O d
itype		^O T		Insert/Overtype
itype		^O ^T
itype		^O t
iwrap		^O W		Word wrap
iwrap		^O ^W
iwrap		^O w
lindent		^K ,		Indent to left
line		^K L		Goto line no.
line		^K ^L
line		^K l
ltarw		LEFT		Go left
ltarw		^S
ltarw		^[ O D
ltarw		^[ [ D
markb		^K B		Set beginning of marked block
markb		^K ^B
markb		^K b
markk		^K K		Set end of marked block
markk		^K ^K
markk		^K k
nextpos		^K =		Goto next position in position history
nextw		^K N		Goto window below
nextw		^K ^N
nextw		^K n
nextword	^F		Goto next word
open		^]		Split line
pgdn		PGDN		Screen down
pgdn		^C
pgup		PGUP		Screen up
pgup		^R
play		^K 0 TO 9	Execute macro
prevpos		^K -
prevw		^K P		Window above
prevw		^K ^P
prevw		^K p
prevword	^A		Previous word
record		^K [		Record macro
redo		^^		Redo changes
retype		^=		Refresh screen
rindent		^K .		Indent to right
rtarw		RIGHT		Go right
rtarw		^D
rtarw		^[ O C
rtarw		^[ [ C
rtnpw		^M		Return
save		^K D		Save file
save		^K S
save		^K ^D
save		^K ^S
save		^K d
save		^K s
shell		^K Z		Shell escape/Suspend
shell		^K ^Z
shell		^K z
shrinkw		^K T		Shrink window
shrinkw		^K ^T
shrinkw		^K t
splitw		^K O		Split window
splitw		^K ^O
splitw		^K o
stat		^K SP		Show status
stop		^K ]		Stop recording macro
tag		^K ;
tomatch		^G		Goto matching parenthasis
undo		^_		Undo changes
uparw		UP		Go up
uparw		^E
uparw		^[ O A
uparw		^[ [ A

:tab

keytab		^@ TO �

aborttab	^K Q
aborttab	^K ^Q
aborttab	^K q
arg		^K \
backstab	^?
backstab	^H
boftab		^Q R
boftab		^Q ^R
boftab		^Q r
boltab		HOME
boltab		^Q s
boltab		^Q S
boltab		^Q ^S
dnarwtab	DOWN
dnarwtab	^N
dnarwtab	^[ [ B
dnarwtab	^[ O B
eoftab		^Q C
eoftab		^Q ^C
eoftab		^Q c
eoltab		END
eoltab		^Q D
eoltab		^Q d
eoltab		^Q ^D
explode		^K I
explode		^K ^I
explode		^K i
help		^K H
help		^K ^H
help		^K h
ltarwtab	LEFT
ltarwtab	^S
ltarwtab	^[ [ D
ltarwtab	^[ O D
nextw		^K N
nextw		^K ^N
nextw		^K n
play		^K 0 TO 9
prevw		^K P
prevw		^K ^P
prevw		^K p
record		^K [
retype		^=
rtarwtab	RIGHT
rtarwtab	^D
rtarwtab	^[ [ C
rtarwtab	^[ O C
rtntab		SP
rtntab		^M
shell		^K Z
shell		^K ^Z
shell		^K z
stop		^K ]
uparwtab	UP
uparwtab	^E
uparwtab	^[ [ A
uparwtab	^[ O A

:help

keyhelp		^@ TO �

aborthelp	^K Q
aborthelp	^K ^Q
aborthelp	^K q
arg		^K \
bofhelp		^Q R
bofhelp		^Q ^R
bofhelp		^Q r
bolhelp		HOME
bolhelp		^Q s
bolhelp		^Q S
bolhelp		^Q ^S
dnarwhelp	DOWN
dnarwhelp	^X
dnarwhelp	^[ [ B
dnarwhelp	^[ O B
eofhelp		^Q C
eofhelp		^Q ^C
eofhelp		^Q c
eolhelp		END
eolhelp		^Q d
eolhelp		^Q D
eolhelp		^Q ^D
explode		^K I
explode		^K ^I
explode		^K i
ltarwhelp	LEFT
ltarwhelp	^S
ltarwhelp	^[ [ D
ltarwhelp	^[ O D
nextw		^K N
nextw		^K ^N
nextw		^K n
play		^K 0 TO 9
prevw		^K P
prevw		^K ^P
prevw		^K p
record		^K [
retype		^=
rtarwhelp	RIGHT
rtarwhelp	^D
rtarwhelp	^[ [ C
rtarwhelp	^[ O C
rtnhelp		SP
rtnhelp		^M
rtnhelp		^K H
rtnhelp		^K ^H
rtnhelp		^K h
shell		^K Z
shell		^K ^Z
shell		^K z
stop		^K ]
uparwhelp	UP
uparwhelp	^E
uparwhelp	^[ [ A
uparwhelp	^[ O A

:query

typeqw		y
typeqw		Y
typeqw		n
typeqw		N
typeqw		0 TO 9

abortqw		^K Q
abortqw		^K ^Q
abortqw		^K q
explode		^K I
explode		^K ^I
explode		^K i
nextw		^K N
nextw		^K ^N
nextw		^K n
prevw		^K P
prevw		^K ^P
prevw		^K p
retype		^R
shell		^K Z
shell		^K ^Z
shell		^K z

:querya

typeqw		^@ TO �

:querysr

typeqw		y
typeqw		Y
typeqw		n
typeqw		N
typeqw		r
typeqw		R
typeqw		0 TO 9

abortqw		^C
abortqw		^K Q
abortqw		^K ^Q
abortqw		^K q
explode		^K I
explode		^K ^I
explode		^K i
nextw		^K N
nextw		^K ^N
nextw		^K n
prevw		^K P
prevw		^K ^P
prevw		^K p
retype		^R
shell		^K Z
shell		^K ^Z
shell		^K z
