@ECHO OFF

:: When setting the memory below make sure to include the amount of ram letter. M = MB, G = GB. Don't use 5GB for example, it's 5G ::

:: This is allocated memory ::
set mem=4G

:: Don't edit past this point ::
ECHO [The 1.12.2 Pack] Server is starting...
ECHO.
ECHO.
ECHO.
ECHO						MMMMMMMMMMMMMNNNN[90mmmmmmmm[0mNNNMMMMMMMMMMMMM
ECHO						MMMMMMMMMNN[90mmmmmmmmmmmmmmmmmmm[0mNNMMMMMMMMM
ECHO						MMMMMMNN[90mmmmmmmmmmmmmmmmmmmmmmmmm[0mNNMMMMMM
ECHO						MMMMNN[90mmmmmmmmmmmmmmmmmmmmmmmmmmmmm[0mNNMMMM
ECHO						MMMN[90mmmmmmmmmmmm[96mdod+sd[90mmmmmmmmmmmmmmmm[0mNMMM
ECHO						MMN[90mmmmmmmmmmm[96mho:/d:--/sd[90mmmmmmmmmmmmmm[0mNMM
ECHO						MN[90mmmmmmmmmm[96md+--::h/:-:oy[90mmmmmmmmmmmmmmm[0mNM
ECHO						N[90mmmmmmmmmmm[96mdssoo+yosso/+[90mmmmmmmmmmmmmmmm[0mN
ECHO						N[90mmmmmmmmmmmm[96ms///+yy/:::omyo:-:h[90mmmmmmmmm[0mN
ECHO						[90mmmmmmmmm[96my:/+h/:::+y:::yd+//::-.o[90mmmmmmmmm[0m
ECHO						[90mmmmmmmmm[96m//++sh::::h:::d/ss///osh[90mmmmmmmmm[0m
ECHO						N[90mmmmmmmm[96mh+///so---h:-:h::/yyo/s[90mmmmmmmmm[0mN
ECHO						N[90mmmmmmmmm[96md/:::y:--s/-+s:::h::y[90mmmmmmmmmm[0mN
ECHO						MN[90mmmmmmmmmm[96mo--:y--+o-s/--s/-y[90mmmmmmmmmm[0mNM
ECHO						MMN[90mmmmmmmmmm[96mhyyms/:y-hy/:hsd[90mmmmmmmmmm[0mNMM
ECHO						MMMN[90mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm[0mNMMM
ECHO						MMMMMN[90mmmmmmmmmmmmmmmmmmmmmmmmmmmmm[0mNNMMMM
ECHO						MMMMMMNN[90mmmmmmmmmmmmmmmmmmmmmmmmm[0mNNMMMMMM
ECHO						MMMMMMMMMNN[90mmmmmmmmmmmmmmmmmmm[0mNNMMMMMMMMM
ECHO						MMMMMMMMMMMMMNNNN[90mmmmmmm[0mNNNNMMMMMMMMMMMMM
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.

java -server -Xmx%mem% -XX:+UseG1GC -Xms4G -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -Dfml.queryResult=confirm -Duser.language=en -jar forge-1.12.2-14.23.5.2860.jar nogui

PAUSE
