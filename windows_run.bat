cls

::
:: move into the build folder so that the output of 
::

cd build

::
:: ../ specifies the root directory containing CMakeLists.txt (?)
:: -G specifies the generator
:: Win64 is the [arch] option, which builds a x64 executable ( not x32 )
::

cmake ../ -G"Visual Studio 14 2015 Win64"

::
:: Go back to the root directory we started at
::

cd ..

pause
