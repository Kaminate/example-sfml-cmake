::
:: This needs to be run prior to run.bat because it uses setx,
:: which modifies an environment registry variable (?).
:: So cmd.exe needs to be re-opened before any changes take effect.
::
:: After running this bat file, you can type %cd% into a new cmd window
:: to see if it worked
::

setx SFML_ROOT "%cd%\SFML-2.4.2"

pause

