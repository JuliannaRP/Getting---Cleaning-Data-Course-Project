###Run_Analysis Code Book

The variable names and data come from features_info.txt which can be accessed at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

###Variables:

###Manipulated variables:
subject_label: The subject identifier

activity_label: The activity the subject performed

###Measured variables:
t-prefix: A time domain signal

f-prefix: A frequency domain signal

mean()-suffix: Mean

std()-suffix: Standard deviation

X, Y, Z suffixes: each denote one axial raw signal

t/fBodyAcc-XYZ: body acceleration signal

tGravityAcc-XYZ: gravity acceleration signal

t/fBodyAccJerk-XYZ: body acceleration Jerk signal

t/fBodyGyro-XYZ: body orientation signal

t/fBodyGyroJerk-XYZ: body orientation Jerk signal

t/fBodyAccMag: body acceleration magnitude

tGravityAccMag: gravity acceleration magnitude

t/fBodyAccJerkMag: body acceleration Jerk magnitude

t/fBodyGyroMag: body orientation magnitude

t/fBodyGyroJerkMag: body orientation Jerk magnitude

gravityMean: mean of gravity acceleration signal

tBodyAccMean: mean of body acceleration signal

tBodyAccJerkMean: mean of body acceleration Jerk signal

tBodyGyroMean: mean of body orientation signal

tBodyGyroJerkMean: mean of body orientation Jerk signal


In the run_analysis.txt dataset, all variables are prefixed with "MEAN_" to indicate that these values are the means of each column for each activity for each subject.
