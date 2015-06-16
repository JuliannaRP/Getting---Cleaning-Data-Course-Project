Run_Analysis Read Me

Raw data of the "Human Activity Recognition Using Smartphones Dataset Version 1.0" were downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The code in run_analysis.R was performed on the dataset. This code:
1) Combined the test and train datasets (X_test.txt and X_train.txt, respectively),
2) Added the subject identifiers (subject_test.txt and subject_train.txt) and activity labels (Y_test.txt and Y_train.txt),
3) Changed the activity labels from numbers to their respective activities according to the legend in activity_labels.txt,
4) Added column labels (features.txt),
5) For the measured variables, removed all columns that were not means or standard deviations.

Additionally, this code computed the means for each mean and standard deviation column per each activity for each subject. This final dataset is saved as run_analysis.txt.

See CodeBook.md for explanations of variable names.
