@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  TC startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and TC_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

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
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set RTI=C:\Program Files\prti1516e\lib\prti1516e.jar
set ETC_FRA_Common=%IVCT_TS_HOME%\ETC-Common\ETC_FRA_Common\ETC_FRA_Common\build\libs\ETC_FRA_Common-0.0.1.jar;%IVCT_TS_HOME%\ETC-Common\ETC_FRA_Common\ETC_FRA_Common\libs\*
set TS_CS_Verification=%IVCT_TS_HOME%\TS_CS_Verification\TS_CS_Verification\build\libs\TS_CS_Verification-0.0.1.jar
set TS_HLA_Declaration=%IVCT_TS_HOME%\TS_HLA_Declaration\TS_HLA_Declaration\build\libs\TS_HLA_Declaration-0.0.1.jar
set TS_HLA_Object=%IVCT_TS_HOME%\TS_HLA_Object\TS_HLA_Object\build\libs\TS_HLA_Object-0.0.1.jar
set TS_HLA_Services=%IVCT_TS_HOME%\TS_HLA_Services\TS_HLA_Services\build\libs\TS_HLA_Services-0.0.1.jar


set CLASSPATH=%APP_HOME%\lib\TC-0.3.1.jar;%RTI%;%APP_HOME%\lib\MessagingHelpers-0.3.1.jar;%APP_HOME%\lib\slf4j-api-1.7.10.jar;%APP_HOME%\lib\json-simple-1.1.1.jar;%APP_HOME%\lib\activemq-client-5.12.0.jar;%APP_HOME%\lib\logback-classic-1.1.3.jar;%APP_HOME%\lib\logback-core-1.1.3.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.10.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.10.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.10.jar;%APP_HOME%\lib\junit-4.10.jar;%APP_HOME%\lib\geronimo-jms_1.1_spec-1.1.1.jar;%APP_HOME%\lib\hawtbuf-1.11.jar;%APP_HOME%\lib\geronimo-j2ee-management_1.1_spec-1.0.1.jar;%APP_HOME%\lib\hamcrest-core-1.1.jar;%ETC_FRA_Common%;%TS_CS_Verification%;%TS_HLA_Declaration%;%TS_HLA_Object%;%TS_HLA_Services%

@rem Execute TC
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %TC_OPTS%  -classpath "%CLASSPATH%" de.fraunhofer.iosb.testrunner.JMSTestRunner %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable TC_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%TC_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
