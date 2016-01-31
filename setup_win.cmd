set homedir=%HOMEDRIVE%%HOMEPATH%

mklink %homedir%\_vimrc %~dp0_vimrc
mklink /D %homedir%\vimfiles %~dp0vimfiles



