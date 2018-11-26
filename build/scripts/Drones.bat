@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Drones startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and DRONES_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\gs-gradle-0.1.7.jar;%APP_HOME%\lib\joda-time-2.2.jar;%APP_HOME%\lib\picocontainer-2.15.jar;%APP_HOME%\lib\Ddd-master-SNAPSHOT.jar;%APP_HOME%\lib\spring-boot-starter-2.1.1.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\commons-math3-3.6.1.jar;%APP_HOME%\lib\mongodb-driver-3.8.2.jar;%APP_HOME%\lib\guava-23.0.jar;%APP_HOME%\lib\gson-2.8.5.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.1.1.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-boot-2.1.1.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-boot-starter-logging-2.1.1.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\javax.annotation-api-1.3.2.jar;%APP_HOME%\lib\spring-context-5.1.3.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-aop-5.1.3.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-beans-5.1.3.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-expression-5.1.3.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\spring-core-5.1.3.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\snakeyaml-1.23.jar;%APP_HOME%\lib\mongodb-driver-core-3.8.2.jar;%APP_HOME%\lib\bson-3.8.2.jar;%APP_HOME%\lib\jsr305-1.3.9.jar;%APP_HOME%\lib\error_prone_annotations-2.0.18.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.14.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\log4j-to-slf4j-2.11.1.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.25.jar;%APP_HOME%\lib\spring-jcl-5.1.3.BUILD-SNAPSHOT.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\log4j-api-2.11.1.jar

@rem Execute Drones
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %DRONES_OPTS%  -classpath "%CLASSPATH%" tests/java/DronesTests %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable DRONES_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%DRONES_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
