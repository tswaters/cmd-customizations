@echo off

:: this one is dangerous!
DOSKEY rm=rd /Q /S $*

DOSKEY ls=DIR $* 

DOSKEY cp=COPY $* 

DOSKEY xcp=XCOPY $*

DOSKEY mv=MOVE $* 

DOSKEY clear=CLS

DOSKEY history=DOSKEY /HISTORY