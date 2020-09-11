#!/bin/bash 
echo
echo "Welcome to HTTP Mock Skeletons Artifact 1.0.0"
echo
echo "Downloading raw datasets for attribute-based learning"
echo

## TWITTER
wget -q -O dataset.zip https://zenodo.org/record/4007570/files/twitter-1.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
mv twitter-1.0.0/twitter-1.0.0.xml src/resources/
rm -rf twitter-1.0.0


## SLACK
wget -q -O dataset.zip https://zenodo.org/record/4007570/files/slack-1.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
mv slack-1.0.0/slack-1.0.0.xml src/resources/
rm -rf slack-1.0.0

## GHTRAFFIC
wget -q -O dataset.zip https://zenodo.org/record/4007589/files/ghtraffic-S-2.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
mv ghtraffic-S-2.0.0/ghtraffic-S-2.0.0.json src/resources/
rm -rf ghtraffic-S-2.0.0

## GOOGLE TASKS
wget -q -O dataset.zip https://zenodo.org/record/4007570/files/googletasks-1.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
mv googletasks-1.0.0/googletasks-1.0.0.xml src/resources/
rm -rf googletasks-1.0.0

echo "Downloading raw datasets for description logic learning"

## TWITTER
wget -q -O dataset.zip https://zenodo.org/record/4008239/files/sub-twitter-1.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
mv sub-twitter-1.0.0/sub-twitter-1.0.0.xml src/resources/
rm -rf sub-twitter-1.0.0

## SLACK
wget -q -O dataset.zip https://zenodo.org/record/4008239/files/sub-slack-1.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
mv sub-slack-1.0.0/sub-slack-1.0.0.xml src/resources/
rm -rf sub-slack-1.0.0

## GHTRAFFIC
wget -q -O dataset.zip https://zenodo.org/record/4008239/files/sub-ghtraffic-S-2.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
mv sub-ghtraffic-S-2.0.0/sub-ghtraffic-S-2.0.0.json src/resources/
rm -rf sub-ghtraffic-S-2.0.0

echo
echo "Downloading datasets completed"

exit 0
