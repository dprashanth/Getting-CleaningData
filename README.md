##Getting-CleaningData
====================
##ReadMe file for the Course Project of Getting & Cleaning Data

Repo contains run_analysis.R, ReadMe file and a code book(CodeBook.md) that describes the variables, the data, and transformations that were performed to clean up the data.

run_analysis.R does the following:

1.Merges the training and the test sets to create one data set.

	Uses cbind to combine all the 3 files of Train(subject_train, y_train, X_train)
	Uses cbind to combine all the 3 files of Test(subject_test, y_tesr, X_test)
	Used rbind to combinall test & tarin data sets
	
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
	
	Create a subset of Datafrmae that contain mean and standard deviation measurements

3.Uses descriptive activity names to name the activities in the data set

	Use decsriptive names for the activities

4.Appropriately labels the data set with descriptive variable names. 

	Use names function to name all the variables

5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject

	Use Aggregate function to create a average measurenents for each activity & subject
