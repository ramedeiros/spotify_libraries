# spotify_libraries
Some files required to run the local music files in Ubuntu 16.04 LTS on Spotify 1.0.28.89.
#
# Instalation:
1º) Download the package: https://github.com/ramedeiros/spotify_libraries/archive/master.zip
#
Or direct from the terminal: git clone https://github.com/ramedeiros/spotify_libraries.git
#
2º) Put all the files in to /usr/lib/x86_64-linux-gnu/ with root privileges.
#
3º) Execute: sudo ldconfig
#
4º) If show any problem with link, make new links.
#
e.g.: "/sbin/ldconfig.real: /usr/lib/x86_64-linux-gnu/libavutil.so.52 it's not a symbolic link"
#
So, execute command: sudo ln -rs /usr/lib/x86_64-linux-gnu/libavutil.so.52.6.100 /usr/lib/x86_64-linux-gnu/libavutil.so.52
#
And so on...
