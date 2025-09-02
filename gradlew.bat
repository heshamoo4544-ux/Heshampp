\
    @if "%DEBUG%" == "" @echo off
    setlocal
    set DIRNAME=%~dp0
    set APP_BASE_NAME=%~n0
    set APP_HOME=%DIRNAME%
    set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar
    set DEFAULT_JVM_OPTS=
    if defined JAVA_HOME goto findJavaFromJavaHome
    set JAVA_EXE=java.exe
    %JAVA_EXE% -version >NUL 2>&1
    if "%ERRORLEVEL%" == "0" goto init
    echo.
    echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
    echo.
    goto fail
    :findJavaFromJavaHome
    set JAVA_HOME=%JAVA_HOME:"=%
    set JAVA_EXE=%JAVA_HOME%\bin\java.exe
    if exist "%JAVA_EXE%" goto init
    echo.
    echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
    echo.
    goto fail
    :init
    "%JAVA_EXE%" %DEFAULT_JVM_OPTS% -Dorg.gradle.appname=%APP_BASE_NAME% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*
    endlocal
    :fail
    exit /b 1
