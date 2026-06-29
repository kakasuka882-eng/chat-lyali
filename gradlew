#!/usr/bin/env bash
#
# Gradle startup script for Unix
#

# Attempt to set APP_HOME
# Resolve links: $0 may be a link
PRG="$0"
# Need this for relative symlinks.
while [ -h "$PRG" ] ; do
    ls -ld "$PRG"
    link=`ls -ld "$PRG" | awk '{print $NF}'`
    case $link in
      /*)  PRG="$link" ;;
      *)   PRG=`dirname "$PRG"`"/$link" ;;
    esac
done
SAVED="`pwd`"
cd "`dirname \"$PRG\"`/.." >/dev/null
APP_HOME="`pwd -P`"
cd "$SAVED" >/dev/null

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Add default JVM options here
DEFAULT_JVM_OPTS='"-Xmx64m"'

# Use the maximum available, or set MAX if that fails.
MAX_FD="maximum"
`ulimit -H -n 2>/dev/null`
MAX_FD=$?
if [ ! "$MAX_FD" = maximum ]; then
    MAX_FD=`ulimit -n`
fi

# WARNING: This script does not always work correctly for directories with spaces
#

# classpath may be too long for dumping so truncate
exec "$JAVACMD" "${JVM_OPTS[@]}" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
