# Microsoft Developer Studio Project File - Name="support" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=support - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "support.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "support.mak" CFG="support - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "support - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "support - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "support - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "../../include" /I "../" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\lib\support.lib"

!ELSEIF  "$(CFG)" == "support - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I "../../include" /I "../" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /FAs /FR /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\lib\support_a.lib"

!ENDIF 

# Begin Target

# Name "support - Win32 Release"
# Name "support - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\bignum.cpp
# End Source File
# Begin Source File

SOURCE=.\error.cpp
# End Source File
# Begin Source File

SOURCE=.\fipsprng.c
# End Source File
# Begin Source File

SOURCE=.\mutex.cpp
# End Source File
# Begin Source File

SOURCE=.\permutation.cpp
# End Source File
# Begin Source File

SOURCE=.\platform_win32.cpp
# End Source File
# Begin Source File

SOURCE=.\random.cpp
# End Source File
# Begin Source File

SOURCE=.\random_internal.cpp
# End Source File
# Begin Source File

SOURCE=.\sanity.cpp
# End Source File
# Begin Source File

SOURCE=.\sha1.c
# End Source File
# Begin Source File

SOURCE=.\support.cpp
# End Source File
# Begin Source File

SOURCE=.\support_internal.cpp
# End Source File
# Begin Source File

SOURCE=..\..\include\dtds\vhti.dtd

!IF  "$(CFG)" == "support - Win32 Release"

# Begin Custom Build
WkspDir=.
InputPath=..\..\include\dtds\vhti.dtd

"default-dtd.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	perl $(WkspDir)/include/dtds/make-header.pl

# End Custom Build

!ELSEIF  "$(CFG)" == "support - Win32 Debug"

# Begin Custom Build
WkspDir=.
InputPath=..\..\include\dtds\vhti.dtd

"default-dtd.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	perl $(WkspDir)/include/dtds/make-header.pl

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\xml_tree_group_check.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\bignum.h
# End Source File
# Begin Source File

SOURCE=..\..\..\vhti\include\vhti\error.h
# End Source File
# Begin Source File

SOURCE=..\..\..\vhti\include\vhti\export.h
# End Source File
# Begin Source File

SOURCE=.\internal_error.h
# End Source File
# Begin Source File

SOURCE=.\mutex.h
# End Source File
# Begin Source File

SOURCE=..\..\..\vhti\include\vhti\permutation.h
# End Source File
# Begin Source File

SOURCE=.\platform.h
# End Source File
# Begin Source File

SOURCE=..\..\..\vhti\include\vhti\random.h
# End Source File
# Begin Source File

SOURCE=.\random_internal.h
# End Source File
# Begin Source File

SOURCE=..\..\..\vhti\include\vhti\support.h
# End Source File
# Begin Source File

SOURCE=.\support_internal.h
# End Source File
# Begin Source File

SOURCE=..\..\..\vhti\include\vhti\types.h
# End Source File
# Begin Source File

SOURCE=.\xml_tree_group_check.h
# End Source File
# End Group
# End Target
# End Project
