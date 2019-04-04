# Getting-and-Cleaning-Data-Assignment
For Coursera Getting and Cleaning Data Assignment

CODE DESCRIPTION

Code finds Path to the test sets and reads the .txt files in test folder.
Code finds Path to the train sets and reads the .txt files in train folder.

Code then combines train set data and test set data via cbind, and finally rbinds test set and train set together for Goal 1.

Code then identifies rows that contain mean and standard deviation variables through the features.txt file. Code filters gross data to extract only means and standard deviation values for Goal 2.

Code extracts descriptive activity names from features.txt for Goal 3.
Code then assigns these activity names to the variables for Goal 4.

Code aggregates data to find column means by factor of Participant Num. The last column also shows if the participant is part of the test or train group. This fulfills goal 5.

Lastly, Code prints organized data.



CODEBOOK

Features are derived from accelerometer and gyroscope.
Signals that begin with "t" denotes a time signal.
Signals that begin with "f" denotes a frequency signal generated via a Fast Fourier Transform (FFT).

tBodyAcc-XYZ <- body acceleration in the XYZ directions
tGravityAcc-XYZ <- gravity acceleration in the XYZ directions
tBodyAccJerk-XYZ <- body jerk movement in the XYZ directions
tBodyGyro-XYZ <- body 3D movement measured by Euclidean norm
tBodyGyroJerk-XYZ <- body 3D jerk measured by Euclidean norm
tBodyAccMag <- body acceleration magnitude
tGravityAccMag <- gravity acceleration magnitude
tBodyAccJerkMag <- body jerk acceleration magnitude
tBodyGyroMag <- body 3D movement magnitude
tBodyGyroJerkMag <- body 3D jerk magnitude
fBodyAcc-XYZ <- body acceleration(FFT) in the XYZ direction
fBodyAccJerk-XYZ <- body jerk acceleration(FFT)for XYZ direction
fBodyGyro-XYZ <- body 3D movement(FFT) in XYZ direction
fBodyAccMag <- body accleration magnitude(FFT) 
fBodyAccJerkMag <- body jerk accleration magnitude(FFT)
fBodyGyroMag <- body 3D movement magnitude(FFT)
fBodyGyroJerkMag <- body 3D jerk magnitude(FFT)

Signals are seperated by:
mean() <- mean value
std() <- standard deviation value

angle() <- angle data based on values of:
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean



