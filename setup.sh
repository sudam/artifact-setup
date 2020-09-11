#!/bin/bash 

START_MESSAGE=""
END_MESSAGE=""
ERROR_MESSAGE=""
HAS_ERROR=""

START_MESSAGE="Welcome to HTTP Mock Skeletons Artifact 1.0.0"

echo $START_MESSAGE
echo
mvn clean install
mvn -q clean compile exec:java -Dexec.mainClass="nz.ac.massey.httpmockskeletons.scripts.datapreparator.TrainingDataGenerator" -Dexec.args="-$*"
echo
echo $END_MESSAGE

fi

exit 0