#!/bin/bash 
echo "Welcome for Reproducing Experimental Results"
echo "Start setting up experimental environment"
echo "Creating scripts/src/resources folder"
mkdir scripts/src/resources
echo "scripts/src/resources folder created"
echo "Downloading raw datasets for attribute-based learning"
wget -q -O dataset.zip https://zenodo.org/record/4007570/files/twitter-1.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
wget -q -O dataset.zip https://zenodo.org/record/4007570/files/slack-1.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
wget -q -O dataset.zip https://zenodo.org/record/4007589/files/ghtraffic-S-2.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
wget -q -O dataset.zip https://zenodo.org/record/4007570/files/googletasks-1.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
echo "Raw datasets for attribute-based learning downloaded"
echo "Downloading raw datasets for description logic learning"
wget -q -O dataset.zip https://zenodo.org/record/4008239/files/sub-twitter-1.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
wget -q -O dataset.zip https://zenodo.org/record/4008239/files/sub-slack-1.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
wget -q -O dataset.zip https://zenodo.org/record/4008239/files/sub-ghtraffic-S-2.0.0.zip && unzip -qq dataset.zip && rm dataset.zip
echo "Raw datasets for description logic learning downloaded"
echo "Extracting and moving dataset files to scripts/src/resources"
mv twitter-1.0.0/twitter-1.0.0.xml src/resources/
rm -rf twitter-1.0.0
mv slack-1.0.0/slack-1.0.0.xml src/resources/
rm -rf slack-1.0.0
mv ghtraffic-S-2.0.0/ghtraffic-S-2.0.0.json src/resources/
rm -rf ghtraffic-S-2.0.0
mv googletasks-1.0.0/googletasks-1.0.0.xml src/resources/
rm -rf googletasks-1.0.0
mv sub-twitter-1.0.0/sub-twitter-1.0.0.xml src/resources/
rm -rf sub-twitter-1.0.0
mv sub-slack-1.0.0/sub-slack-1.0.0.xml src/resources/
rm -rf sub-slack-1.0.0
mv sub-ghtraffic-S-2.0.0/sub-ghtraffic-S-2.0.0.json src/resources/
rm -rf sub-ghtraffic-S-2.0.0
echo "Dataset files extracted and moved to scripts/src/resources"
echo "End setting up experimental environment"

exit 0
