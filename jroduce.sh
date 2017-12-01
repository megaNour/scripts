for var in "$@"
do
    args="$args $var"
done

java -jar ~/programmes/producer-0.0.1-SNAPSHOT.jar $args
