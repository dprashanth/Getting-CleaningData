##Code Book
====================
##Describes the variables in the final Data Set

*Subject - indicates the subject , ranges from 1 to 3
*ActivityName - indicates the activity performed
### all the measurements that are mean of measurements grouped by each activity and subject
*TimeBodyAccelerometerMeanX
*TimeBodyAccelerometerMeanY
*TimeBodyAccelerometerMeanZ
*TimeBodyAccelerometerSTDx
*TimeBodyAccelerometerSTDy
*TimeBodyAccelerometerSTDz
*TimeGravityAccelerometerMeanX
*TimeGravityAccelerometerMeanY
*TimeGravityAccelerometerMeanZ
*TimeGravityAccelerometerSTDx
*TimeGravityAccelerometerSTDy
*TimeGravityAccelerometerSTDz
*TimeBodyAccelerometerJerkMeanX
*TimeBodyAccelerometerJerkMeanY
*TimeBodyAccelerometerJerkMeanZ
*TimeBodyAccelerometerJerkSTDx
*TimeBodyAccelerometerJerkSTDy
*TimeBodyAccelerometerJerkSTDz
*TimeBodyGyroscopeMeanX
*TimeBodyGyroscopeMeanY
*TimeBodyGyroscopeMeanZ
*TimeBodyGyroscopeSTDx
*TimeBodyGyroscopeSTDy
*TimeBodyGyroscopeSTDz
*TimeBodyGyroscopeJerkMeanX
*TimeBodyGyroscopeJerkMeanY
*TimeBodyGyroscopeJerkMeanZ
*TimeBodyGyroscopeJerkSTDx
*TimeBodyGyroscopeJerkSTDy
*TimeBodyGyroscopeJerkSTDz
*TimeBodyAccelerometerMagnitudeMean
*TimeBodyAccelerometerMagnitudeSTD
*TimeGravityAccelerometerMagnitudeMean
*TimeGravityAccelerometerMagnitudeSTD
*TimeBodyAccelerometerJerkMagnitudeMean
*TimeBodyAccelerometerJerkMagnitudeSTD
*TimeBodyGyroscopeMagnitudeMean
*TimeBodyGyroscopeMagnitudeSTD
*TimeBodyGyroscopeJerkMagnitudeMean
*TimeBodyGyroscopeJerkMagnitudeSTD
*fBodyAccelerometerMeanX
*fBodyAccelerometerMeanY
*fBodyAccelerometerMeanZ
*fBodyAccelerometerSTDx
*fBodyAccelerometerSTDy
*fBodyAccelerometerSTDz
*fBodyAccelerometerJerkMeanX
*fBodyAccelerometerJerkMeanY
*fBodyAccelerometerJerkMeanZ
*fBodyAccelerometerJerkSTDx
*fBodyAccelerometerJerkSTDy
*fBodyAccelerometerJerkSTDz
*fBodyGyroscopeMeanX
*fBodyGyroscopeMeanY
*fBodyGyroscopeMeanZ
*fBodyGyroscopeSTDx
*fBodyGyroscopeSTDy
*fBodyGyroscopeSTDz
*fBodyAccelerometerMagnitudeMean
*fBodyAccelerometerMagnitudeSTD
*fBodyAccelerometerJerkMagnitudeMean
*fBodyAccelerometerJerkMagnitudeSTD
*fBodyBodyGyroscopeMagnitudeMean
*fBodyBodyGyroscopeMagnitudeSTD
*fBodyBodyGyroscopeJerkMagnitudeMean
*fBodyBodyGyroscopeJerkMagnitudeSTD

## Transformations Done to the data sets given

*Reads all the files in Train folder, cbind files
*Reads all the files in Test folder, cbind files
*rbind test and train files
*extract all the STD & Mean measuremnents
*Add names to activities
*Use aggregare function to get measurements for each subject & activity
*write the final dataset

