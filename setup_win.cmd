set vimrc = %HOMEDRIVE%%HOMEPATH%\_vimrc
set vimfiles = %HOMEDRIVE%%HOMEPATH%\vimfiles

mklink %vimrc% _vimrc
mklink /D %vimfiles% vimfiles

