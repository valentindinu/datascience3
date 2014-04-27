Getting and Cleaning Data 
=========================

Peer Assignment
---------------

This is the CodeBook document for the peer assignment of the "Getting and Cleaning Data", which is the third course in the "Data Science" specialization, organised by Johns Hopkins University.

This assignment requires loading, merging, cleaning and outputting data aquired by Samsung on gyroscopes and accelerometers from Samsung smarphones worn by a set of volunteers while performing different activities.

The original data set can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data contains a training set and a test set. This script merges these two sets into one and also merges data from multiple files (subjects, activities and measured variables) into one data set.

First, the script reads all the files, then it merges the training and the test sets for each file. After that it extracts all the means and standard deviations in a new data set. In the next step, it replaces the id of the activity with a human readable text (which is read from activity_labels.txt from the original data). Finally, it melts the data based on the activity and subject (the subject is an id for each volunteer) setting the rest of the columns as variables and it casts the melted data into a new data frame where the mean value is calculated for each id (activity + subject).

When all the calculations are ready, the script exports the data in two formats: txt and csv ("tidy_data.txt" and "tidy_data.csv").

### Variables
These are the variables in the tidy data set:
####Activity
        This represents the type of activity and it can have one of the following values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

####Subject
        This represents the id of the volunteer that generated the data. In this data set, it can have values from 1 to 30
    
####tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z
        The mean value for the acceleration signal of the body for the X, Y or Z axis.
    
####tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z
        The standard deviation for the acceleration signal of the body for the X, Y or Z axis.
    
####tGravityAcc-mean()-X, tGravityAcc-mean()-Y, tGravityAcc-mean()-Z
        The mean value for the acceleration signal of the gravity for the X, Y or Z axis.
    
####tGravityAcc-std()-X, tGravityAcc-std()-Y, tGravityAcc-std()-Z
        The standard deviation forr the acceleration signal of the gravity for the X, Y or Z axis.
        
####tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z
        The mean value of the body linear acceleration derived in time, for the X, Y, Z axis.
        
####tBodyAccJerk-std()-X, tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z
        The standard deviation for the body linear acceleration derived in time, for the X, Y, Z axis.
        
####tBodyGyro-mean()-X, tBodyGyro-mean()-Y, tBodyGyro-mean()-Z
        The mean value for the gyro signal of the body for the X, Y or Z axis.

####tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z
        The standard deviation for the gyro signal of the body for the X, Y or Z axis.
    
####tBodyGyroJerk-mean()-X, tBodyGyroJerk-mean()-Y, tBodyGyroJerk-mean()-Z
        The mean value of the body angular velocity derived in time, for the X, Y, Z axis.

####tBodyGyroJerk-std()-X, tBodyGyroJerk-std()-Y, tBodyGyroJerk-std()-Z
        The standard devciation for the body angular velocity derived in time, for the X, Y, Z axis.

####tBodyAccMag-mean()
        The mean of the magnitude of the acceleration signal of the body calculated using the Euclidean norm.

####tBodyAccMag-std() 
        The standard deviation of the magnitude of the acceleration signal of the body calculated using the Euclidean norm.
    
####tGravityAccMag-mean() 
        The mean of the magnitude of the acceleration signal of the gravity calculated using the Euclidean norm.
        
####tGravityAccMag-std() 
        The standard deviation of the magnitude of the acceleration signal of the gravity calculated using the Euclidean norm.

####tBodyAccJerkMag-mean() 
        The mean of the magnitude of body linear acceleration derived in time calculated using the Euclidean norm.

####tBodyAccJerkMag-std()
        The standard deviation of the magnitude of body linear acceleration derived in time calculated using the Euclidean norm.
        
####tBodyGyroMag-mean()
        The mean of the magnitude of the gyro signal of the body, calculated using the Euclidean norm.

####tBodyGyroMag-std() 
        The standard deviation of the magnitude of the gyro signal of the body, calculated using the Euclidean norm.
        
####tBodyGyroJerkMag-mean()
        The mean of the magnitude for the body angular velocity derived in time, calculated using the Euclidean norm.
        
####tBodyGyroJerkMag-std() 
        The standard deviation of the magnitude for the body angular velocity derived in time, calculated using the Euclidean norm.
        
####tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z
        The mean value for the Fast Fourier Transform (FFT) applied to the acceleration signal of the body for the X, Y or Z axis.
	
####tBodyAcc-std()-X, BodyAcc-std()-Y, tBodyAcc-std()-Z
        The standard deviation for the Fast Fourier Transform (FFT) applied to the acceleration signal of the body for the X, Y or Z axis.
    
####tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z
        The mean value of the Fast Fourier Transform (FFT) applied to the body linear acceleration derived in time, for the X, Y, Z axis.
        
####tBodyAccJerk-std()-X, tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z
        The standard deviation for the Fast Fourier Transform (FFT) applied to the body linear acceleration derived in time, for the X, Y, Z axis.

####tBodyGyro-mean()-X, tBodyGyro-mean()-Y, tBodyGyro-mean()-Z
        The mean value for the Fast Fourier Transform (FFT) applied to the gyro signal of the body for the X, Y or Z axis.

####tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z
        The standard deviation for the Fast Fourier Transform (FFT) applied to the gyro signal of the body for the X, Y or Z axis.
		
####tBodyAccMag-mean()
        The mean of the Fast Fourier Transform (FFT) applied to the magnitude of the acceleration signal of the body calculated using the Euclidean norm.

####tBodyAccMag-std() 
        The standard deviation of the Fast Fourier Transform (FFT) applied to the magnitude of the acceleration signal of the body calculated using the Euclidean norm.

####tBodyAccJerkMag-mean() 
        The mean of the Fast Fourier Transform (FFT) applied to the magnitude of body linear acceleration derived in time calculated using the Euclidean norm.

####tBodyAccJerkMag-std()
        The standard deviation of the Fast Fourier Transform (FFT) applied to the magnitude of body linear acceleration derived in time calculated using the Euclidean norm.
		
####tBodyGyroMag-mean()
        The mean of the Fast Fourier Transform (FFT) applied to the magnitude of the gyro signal of the body, calculated using the Euclidean norm.

####tBodyGyroMag-std() 
        The standard deviation of the Fast Fourier Transform (FFT) applied to the magnitude of the gyro signal of the body, calculated using the Euclidean norm.		
		
####tBodyGyroJerkMag-mean()
        The mean of the Fast Fourier Transform (FFT) applied to the magnitude for the body angular velocity derived in time, calculated using the Euclidean norm.
        
####tBodyGyroJerkMag-std() 
        The standard deviation of the Fast Fourier Transform (FFT) applied to the magnitude for the body angular velocity derived in time, calculated using the Euclidean norm.		