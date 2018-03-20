echo $1
java -Xdebug -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=y -jar $1

