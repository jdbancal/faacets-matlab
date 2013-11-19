# This file prepares the folder to use in matlab.
# (Symbolic links are translated because they can
# give problems to matlab.)

rm -rf matlabFolder
cp -r src/main/matlab matlabFolder
cp -r --dereference linksToJars matlabFolder/jars
cp otherJars/* matlabFolder/jars

