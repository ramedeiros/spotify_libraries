# spotify_libraries
Some files required to run the local music files in Ubuntu 16.04 LTS on Spotify 1.0.28.89.

Tested also on Debian Jessie and Scratch (testing) on Jun, 6 2016

## Download
1º) Download the package: https://github.com/ramedeiros/spotify_libraries/archive/master.zip
#
Or direct from the terminal: git clone https://github.com/ramedeiros/spotify_libraries.git
#

## Instalation

There is two methods of installation, one in-place, that does not need root privileges, and one system wide, that envolves copying the libs and making them available to all applications on the system.

### in-place (Userland) - Prefered

This method sets `LD_LIBRARY_PATH` to the directory with the libraries and make a desktop icon that calls a wrapper shell script.

Just enter the directory and Execute:

`sh install.sh`

It will create an Icon on your desktop manager named **Spotify Wrapped**

**Attention:** You must keep the directory, since the installation only installed the desktop icon.

If the system have multiple users, it is wise to repeat this procedure to all users that want to use Spotify with local files.

### System wide

**Warning:** This method demands root privileges

Put all the files in to `/usr/lib/x86_64-linux-gnu/` with root privileges.

Execute: `sudo ldconfig`

If show any problem with link, make new links.

e.g.: "/sbin/ldconfig.real: /usr/lib/x86_64-linux-gnu/libavutil.so.52 it's not a symbolic link"


So, execute command: `sudo ln -rs` /usr/lib/x86_64-linux-gnu/libavutil.so.52.6.100 /usr/lib/x86_64-linux-gnu/libavutil.so.52

And so on...
