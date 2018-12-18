@echo off & setlocal enabledelayedexpansion
@echo [start Tools V1.0]
Title [start Tools V1.0]
::批处理命令开始-----------------------------------

echo ************************************************************
echo **                                                        **
echo **                    start Tools                         **
echo **              http://www.dcits.com                      **
echo **                                                        **
echo **                                                        **
echo ************************************************************
set LIB_JARS=""
cd .\lib
for %%i in (*) do set LIB_JARS=!LIB_JARS!;..\lib\%%i
if ""%1"" == ""debug"" goto debug
if ""%1"" == ""jmx"" goto jmx
java -Xms64m -Xmx1024m -XX:MaxPermSize=64M -classpath .\config;%LIB_JARS% com.dcits.ensemble.dbrunner.DbRunnerMain
echo please input arg:
set /P arg=%arg%
    java -Xms64m -Xmx1024m -XX:MaxPermSize=64M -classpath .\config;%LIB_JARS% com.dcits.ensemble.dbrunner.DbRunnerMain %arg%" ****" %1 %2
goto end

:end
pause