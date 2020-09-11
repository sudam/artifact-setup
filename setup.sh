#!/bin/bash 

START_MESSAGE=""
END_MESSAGE=""
ERROR_MESSAGE=""
HAS_ERROR=""

START_MESSAGE="Welcome to HTTP Mock Skeletons Artifact 1.0.0"

echo $START_MESSAGE
echo
echo "Downloading datasets..."
wget -q -O tmp.zip https://zenodo.org/record/4007570/files/twitter-1.0.0.zip && unzip tmp.zip && rm tmp.zip
mv twitter-1.0.0.xml src/resources/
wget -q -O tmp.zip https://zenodo.org/record/4007570/files/googletasks-1.0.0.zip && unzip tmp.zip && rm tmp.zip
mv googletasks-1.0.0.xml src/resources/
wget -q -O tmp.zip https://zenodo.org/record/4007570/files/slack-1.0.0.zip && unzip tmp.zip && rm tmp.zip
mv slack-1.0.0.xml src/resources/


# mvn clean install
# mvn -q clean compile exec:java -Dexec.mainClass="nz.ac.massey.httpmockskeletons.scripts.datapreparator.TrainingDataGenerator" -Dexec.args="-$*"
echo
echo $END_MESSAGE

fi

exit 0
