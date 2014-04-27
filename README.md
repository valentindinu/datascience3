Getting and Cleaning Data 
=========================

Peer Assignment
---------------

This is the readme document for the peer assignment of the "Getting and Cleaning Data", which is the third course in the "Data Science" specialization, organised by Johns Hopkins University.

This assignment requires loading, merging, cleaning and outputting data aquired by Samsung on gyroscopes and accelerometers from Samsung smarphones worn by a set of volunteers while performing different activities.

The original data set can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


###Requirements
Before you run the "run_analysis.R" script, you need to fulfill the following requirements:
- copy the "run_analysis.R" in a folder and set the folder as working directory for R (setwd()), or you can just copy "run_analysis.R" in the folder that is already set asa working directory; you can see your working directory by running getwd()
- create a new folder called "data" in your working directory
- copy the archive with the data (http://archive.ics.uci.edu/ml/machine-learning-databases/00240/) in the "data" folder and extract the archive there; in the end you should have this path: "data\UCI HAR Dataset\features.txt"
- make sure that you have reading and writing privileges on the working directory 
- make sure you have the "reshape2" library available for loading (http://cran.r-project.org/web/packages/reshape2/index.html)


###Runnung the script
After all the previous requirements are met, you can simply run the "run_analysis.R" script.


###Results
The script creates a two new files, one called "tidy_data.txt" and one called "tidy_data.csv". Both files contain the same data, but in different formats.
The data represents the averages of the means and standard deviations for all the measured variables, for each type of activity and each subject.
