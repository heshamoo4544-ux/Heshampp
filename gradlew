#!/usr/bin/env sh
##############################################################################
## Gradle start up script for UN*X
##############################################################################
APP_BASE_NAME=`basename "$0"`
APP_HOME=`dirname "$0"`
CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar
DEFAULT_JVM_OPTS=""
# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD="maximum"
warn () {
    echo "$*"
}
die () {
    echo
    echo "$*"
    echo
    exit 1
}
cygwin=false
msys=false
darwin=false
nonstop=false
case "`uname`" in
  CYGWIN* )
    cygwin=true
    ;;
  Darwin* )
    darwin=true
    ;;
  MSYS* | MINGW* )
    msys=true
    ;;
  * )
    ;;
esac
if [ -z "$JAVA_HOME" ] ; then
    warn "JAVA_HOME is not set, using java from PATH."
fi
exec "$JAVA_HOME/bin/java" $DEFAULT_JVM_OPTS -Dorg.gradle.appname=$APP_BASE_NAME -classpath $CLASSPATH org.gradle.wrapper.GradleWrapperMain "$@"
