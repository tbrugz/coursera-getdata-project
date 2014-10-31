
Code Book
========

This code book describes a tidy dataset generated from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


tidy dataset
----------

The tidy dataset has 89 variables.

The tidy dataset has the following identifying properties/columns:

1. `subject` - subject identifier (range: from 1 to 30)
2. `activity` - adtivity identifier (range: from 1 to 6)
3. `activity_label`  - activity label (one of: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

The following 86 variables contain the average of the original sensor data for each subject and activity. The following naming conventions apply:

1. Time domain signals variables are prefixed with 't' - data captured at a constant rate of 50 Hz
2. Frequency domain signals are prefixed with 'f'
3. '-mean()' and '-std()' are used to denote mean and std calculated values
4. Suffixes 'X','Y' and 'Z' are used to denote 3-axial signals in the X, Y and Z directions

All variable names:

```
 [1] "subject"                             
 [2] "activity"                            
 [3] "activity_label"                      
 [4] "tBodyAcc.mean...X"                   
 [5] "tBodyAcc.mean...Y"                   
 [6] "tBodyAcc.mean...Z"                   
 [7] "tGravityAcc.mean...X"                
 [8] "tGravityAcc.mean...Y"                
 [9] "tGravityAcc.mean...Z"                
[10] "tBodyAccJerk.mean...X"               
[11] "tBodyAccJerk.mean...Y"               
[12] "tBodyAccJerk.mean...Z"               
[13] "tBodyGyro.mean...X"                  
[14] "tBodyGyro.mean...Y"                  
[15] "tBodyGyro.mean...Z"                  
[16] "tBodyGyroJerk.mean...X"              
[17] "tBodyGyroJerk.mean...Y"              
[18] "tBodyGyroJerk.mean...Z"              
[19] "tBodyAccMag.mean.."                  
[20] "tGravityAccMag.mean.."               
[21] "tBodyAccJerkMag.mean.."              
[22] "tBodyGyroMag.mean.."                 
[23] "tBodyGyroJerkMag.mean.."             
[24] "fBodyAcc.mean...X"                   
[25] "fBodyAcc.mean...Y"                   
[26] "fBodyAcc.mean...Z"                   
[27] "fBodyAcc.meanFreq...X"               
[28] "fBodyAcc.meanFreq...Y"               
[29] "fBodyAcc.meanFreq...Z"               
[30] "fBodyAccJerk.mean...X"               
[31] "fBodyAccJerk.mean...Y"               
[32] "fBodyAccJerk.mean...Z"               
[33] "fBodyAccJerk.meanFreq...X"           
[34] "fBodyAccJerk.meanFreq...Y"           
[35] "fBodyAccJerk.meanFreq...Z"           
[36] "fBodyGyro.mean...X"                  
[37] "fBodyGyro.mean...Y"                  
[38] "fBodyGyro.mean...Z"                  
[39] "fBodyGyro.meanFreq...X"              
[40] "fBodyGyro.meanFreq...Y"              
[41] "fBodyGyro.meanFreq...Z"              
[42] "fBodyAccMag.mean.."                  
[43] "fBodyAccMag.meanFreq.."              
[44] "fBodyBodyAccJerkMag.mean.."          
[45] "fBodyBodyAccJerkMag.meanFreq.."      
[46] "fBodyBodyGyroMag.mean.."             
[47] "fBodyBodyGyroMag.meanFreq.."         
[48] "fBodyBodyGyroJerkMag.mean.."         
[49] "fBodyBodyGyroJerkMag.meanFreq.."     
[50] "angle.tBodyAccMean.gravity."         
[51] "angle.tBodyAccJerkMean..gravityMean."
[52] "angle.tBodyGyroMean.gravityMean."    
[53] "angle.tBodyGyroJerkMean.gravityMean."
[54] "angle.X.gravityMean."                
[55] "angle.Y.gravityMean."                
[56] "angle.Z.gravityMean."                
[57] "tBodyAcc.std...X"                    
[58] "tBodyAcc.std...Y"                    
[59] "tBodyAcc.std...Z"                    
[60] "tGravityAcc.std...X"                 
[61] "tGravityAcc.std...Y"                 
[62] "tGravityAcc.std...Z"                 
[63] "tBodyAccJerk.std...X"                
[64] "tBodyAccJerk.std...Y"                
[65] "tBodyAccJerk.std...Z"                
[66] "tBodyGyro.std...X"                   
[67] "tBodyGyro.std...Y"                   
[68] "tBodyGyro.std...Z"                   
[69] "tBodyGyroJerk.std...X"               
[70] "tBodyGyroJerk.std...Y"               
[71] "tBodyGyroJerk.std...Z"               
[72] "tBodyAccMag.std.."                   
[73] "tGravityAccMag.std.."                
[74] "tBodyAccJerkMag.std.."               
[75] "tBodyGyroMag.std.."                  
[76] "tBodyGyroJerkMag.std.."              
[77] "fBodyAcc.std...X"                    
[78] "fBodyAcc.std...Y"                    
[79] "fBodyAcc.std...Z"                    
[80] "fBodyAccJerk.std...X"                
[81] "fBodyAccJerk.std...Y"                
[82] "fBodyAccJerk.std...Z"                
[83] "fBodyGyro.std...X"                   
[84] "fBodyGyro.std...Y"                   
[85] "fBodyGyro.std...Z"                   
[86] "fBodyAccMag.std.."                   
[87] "fBodyBodyAccJerkMag.std.."           
[88] "fBodyBodyGyroMag.std.."              
[89] "fBodyBodyGyroJerkMag.std.."    
```

