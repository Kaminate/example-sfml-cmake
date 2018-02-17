cls

::
:: delete the build folder ( if it exists )
:: /s is recursive
:: /q is quiet mode ( no y/n confirm prompt )
::

if exist build rmdir /s /q build

::
:: create a folder for our visual studio files
::

mkdir build

::
:: copy over the dlls
::
:: /s - copy subdirectories too
:: Note that the destination ends with a backslash so that
:: xcopy knows that the destination is a directory instead,
:: of a file
::

xcopy /s "%SFML_ROOT%/bin" "build/Debug\"
xcopy /s "%SFML_ROOT%/bin" "build/Release\"

pause
