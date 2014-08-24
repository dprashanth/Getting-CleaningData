##1.Merges the training and the test sets to create one data set.
##2.Extracts only the measurements on the mean and standard deviation for each measurement. 
##3.Uses descriptive activity names to name the activities in the data set
##4.Appropriately labels the data set with descriptive variable names. 
##5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject


run_analysis <- function() {
        
                # Reading all the train files
                subject_train <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
                y_train <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
                x_train <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
                
                #Reading all test files
                subject_test <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
                y_test <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
                x_test <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
                
                #cbind all train files
                master_train <- cbind(subject_train,y_train,x_train)
                
                #cbind all test files
                master_test <- cbind(subject_test,y_test,x_test)
                
                #create a master data frame by rbinding train & test files
                masterDF <- rbind(master_train,master_test)
                
                ##Extracts only the measurements on the mean and standard deviation for each measurement
                
                masterDFsubset <- masterDF[,c(1:8,43:48,83:88,123:128,163:168,203:204,216:217,229:230,242:243,255:256,268:273,347:352,426:431,505:506,518:519,531:532,544:545)]
                
                ##Adding descriptive activity names to name the activities in the data set
                
                masterDFsubset$ActivityName[masterDFsubset$V1.1 == 1] <- "Walking"
                masterDFsubset$ActivityName[masterDFsubset$V1.1 == 2] <- "Walking Upstairs"
                masterDFsubset$ActivityName[masterDFsubset$V1.1 == 3] <- "Walking Downstairs"
                masterDFsubset$ActivityName[masterDFsubset$V1.1 == 4] <- "Sitting"
                masterDFsubset$ActivityName[masterDFsubset$V1.1 == 5] <- "Standing"
                masterDFsubset$ActivityName[masterDFsubset$V1.1 == 6] <- "Laying"
                
                ## Removing the redundant column
                
                masterDFsubset$V1.1 <- NULL
                
                ## Re-oder coulmns in the masterDFsubset
                
                masterDFsubset <- masterDFsubset[,c(1,68,2:67)]
                
                ## Rename the columns
                
                names(masterDFsubset) = c("Subject", "ActivityName","TimeBodyAccelerometerMeanX", "TimeBodyAccelerometerMeanY", "TimeBodyAccelerometerMeanZ", "TimeBodyAccelerometerSTDx", "TimeBodyAccelerometerSTDy","TimeBodyAccelerometerSTDz", "TimeGravityAccelerometerMeanX","TimeGravityAccelerometerMeanY", "TimeGravityAccelerometerMeanZ", "TimeGravityAccelerometerSTDx", "TimeGravityAccelerometerSTDy", "TimeGravityAccelerometerSTDz", "TimeBodyAccelerometerJerkMeanX", "TimeBodyAccelerometerJerkMeanY", "TimeBodyAccelerometerJerkMeanZ", "TimeBodyAccelerometerJerkSTDx", "TimeBodyAccelerometerJerkSTDy", "TimeBodyAccelerometerJerkSTDz", "TimeBodyGyroscopeMeanX", "TimeBodyGyroscopeMeanY", "TimeBodyGyroscopeMeanZ", "TimeBodyGyroscopeSTDx", "TimeBodyGyroscopeSTDy", "TimeBodyGyroscopeSTDz", "TimeBodyGyroscopeJerkMeanX", "TimeBodyGyroscopeJerkMeanY", "TimeBodyGyroscopeJerkMeanZ", "TimeBodyGyroscopeJerkSTDx", "TimeBodyGyroscopeJerkSTDy", "TimeBodyGyroscopeJerkSTDz", "TimeBodyAccelerometerMagnitudeMean", "TimeBodyAccelerometerMagnitudeSTD", "TimeGravityAccelerometerMagnitudeMean", "TimeGravityAccelerometerMagnitudeSTD", "TimeBodyAccelerometerJerkMagnitudeMean", "TimeBodyAccelerometerJerkMagnitudeSTD", "TimeBodyGyroscopeMagnitudeMean", "TimeBodyGyroscopeMagnitudeSTD", "TimeBodyGyroscopeJerkMagnitudeMean", "TimeBodyGyroscopeJerkMagnitudeSTD", "fBodyAccelerometerMeanX", "fBodyAccelerometerMeanY", "fBodyAccelerometerMeanZ", "fBodyAccelerometerSTDx", "fBodyAccelerometerSTDy", "fBodyAccelerometerSTDz", "fBodyAccelerometerJerkMeanX", "fBodyAccelerometerJerkMeanY", "fBodyAccelerometerJerkMeanZ", "fBodyAccelerometerJerkSTDx", "fBodyAccelerometerJerkSTDy", "fBodyAccelerometerJerkSTDz", "fBodyGyroscopeMeanX", "fBodyGyroscopeMeanY", "fBodyGyroscopeMeanZ", "fBodyGyroscopeSTDx", "fBodyGyroscopeSTDy", "fBodyGyroscopeSTDz", "fBodyAccelerometerMagnitudeMean", "fBodyAccelerometerMagnitudeSTD", "fBodyAccelerometerJerkMagnitudeMean", "fBodyAccelerometerJerkMagnitudeSTD", "fBodyBodyGyroscopeMagnitudeMean", "fBodyBodyGyroscopeMagnitudeSTD", "fBodyBodyGyroscopeJerkMagnitudeMean", "fBodyBodyGyroscopeJerkMagnitudeSTD")
                
                ## Creating a final data set
                
                finalDF <- aggregate(masterDFsubset, by=list(masterDFsubset$ActivityName,masterDFsubset$Subject), FUN=mean)
                
                ## Cleaning up final DF
                
                finalDF$ActivityName <- finalDF$Group.1
                finalDF$Group.1 <- NULL
                finalDF$Group.2 <- NULL
                
                write.table(finalDF, file="finalDataSet.txt", row.name=FALSE)
                
        
}
