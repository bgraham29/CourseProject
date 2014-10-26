# Code Book

This Code Book is modified from the features information provided by the UCI Machine Learning website. The list of variables is modified to include only those variables that 
are present in the final "tidy" data set.


Feature Selection 
*****************

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

< other variables were deleted from the final data set >



## The variables in the tidy data set are:

id - the identification number for the volunteer from whom data were collected

Activity - a factor vector indicating the activity that was performed
* Walking
* Walking upstairs
* Walking downstairs
* Sitting
* Standing
* Laying

### Measurements (all variables in the tidy data set are given as the mean for each subject / activity combination)
**Variables are all normalized and bounded within [-1, 1]**

#### Time domain body accelerometer signals for the three axes:
Means:	
* tBodyAcc-mean()-X 
* tBodyAcc-mean()-Y 
* tBodyAcc-mean()-Z

Standard deviations:
* tBodyAcc-std()-X 
* tBodyAcc-std()-Y 
* tBodyAcc-std()-Z 

#### Time domain gravity acceleration for the three axes:
Means:
* tGravityAcc-mean()-X 
* tGravityAcc-mean()-Y 
* tGravityAcc-mean()-Z 

Standard deviations:
* tGravityAcc-std()-X 
* tGravityAcc-std()-Y 
* tGravityAcc-std()-Z 

#### Jerk signals derived from body linear accleration and angular velocity for acceleromater signals on the three axes (time domain):
Means:
* tBodyAccJerk-mean()-X 
* tBodyAccJerk-mean()-Y 
* tBodyAccJerk-mean()-Z 

Standard deviations:
* tBodyAccJerk-std()-X 
* tBodyAccJerk-std()-Y 
* tBodyAccJerk-std()-Z 

#### Time domain body gyroscope signals for the three axes:
Means:
* tBodyGyro-mean()-X 
* tBodyGyro-mean()-Y 
* tBodyGyro-mean()-Z 

Standard deviations:
* tBodyGyro-std()-X 
* tBodyGyro-std()-Y 
* tBodyGyro-std()-Z 

#### Jerk signals derived from body linear accleration and angular velocity for gyroscope signals on the three axes (time domain):
Means:
* tBodyGyroJerk-mean()-X 
* tBodyGyroJerk-mean()-Y 
* tBodyGyroJerk-mean()-Z 

Standard deviations:
* tBodyGyroJerk-std()-X 
* tBodyGyroJerk-std()-Y 
* tBodyGyroJerk-std()-Z 

#### Time domain magnitude of three-dimensional signals as calculated using the Eucliean norm

Body accelerometer magnitude (time domain)
* tBodyAccMag-mean() 
* tBodyAccMag-std()

Gravity accelerometer magnitude (time domain)
* tGravityAccMag-mean() 
* tGravityAccMag-std() 

Body accelerometer jerk magnitude (time domain)
* tBodyAccJerkMag-mean() 
* tBodyAccJerkMag-std() 

Body Gyroscope magnitude (time domain)
* tBodyGyroMag-mean() 
* tBodyGyroMag-std() 

Body gyroscope jerk magnitude (time domain)
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()

#### Fast Fourier transforms applied to signals (frequency domain)
Frequency domain body accelerometer

Means:
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z

Standard deviations:
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z

Frequency domain body accelerometer jerk:

Means:
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z

Standard deviations:
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z

Frequency domain body gyroscope signals:

Means:
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z

Standard deviations:
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z

#### Time domain magnitude of three-dimensional signals as calculated using the Eucliean norm
Body accelerometer magnitude (frequency domain):
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()