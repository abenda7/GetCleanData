# Codebook for Tidy Data UH1CAR.txt

   The tidy data was created based on the original training and test data provided. 
   See bottom of document for details on original data.

## Tidy Data UH1CAR.txt
     This only contains variables related to mean and standard deviation.
     The data contains average of said variables group by Subject (Test and Training) and Activity.

###  Field List  
1.  Subject   -  ID associated with a particular person either from Test or Training Group
                           Numeric;  values range  from 1 to 30      
      
2. Activity   -   The activity undertaken by subject while being measured.
                           Character;  
                           values range from: 
                           LAYING
, SITTING
, STANDING
, WALKING
, WALKING_DOWNSTAIRS
, WALKING_UPSTAIRS


Following are the mean and standard deviation variables that were averaged by Subject and Activity.
All are Numeric. 

3. Avg_tBodyAcc-mean()-X
4. Avg_tBodyAcc-mean()-Y
5. Avg_tBodyAcc-mean()-Z
6. Avg_tBodyAcc-std()-X
7. Avg_tBodyAcc-std()-Y
8. Avg_tBodyAcc-std()-Z
9. Avg_tGravityAcc-mean()-X
10. Avg_tGravityAcc-mean()-Y
11. Avg_tGravityAcc-mean()-Z
12. Avg_tGravityAcc-std()-X
13. Avg_tGravityAcc-std()-Y
14. Avg_tGravityAcc-std()-Z
15. Avg_tBodyAccJerk-mean()-X
16. Avg_tBodyAccJerk-mean()-Y
17. Avg_tBodyAccJerk-mean()-Z
18. Avg_tBodyAccJerk-std()-X
19. Avg_tBodyAccJerk-std()-Y
20. Avg_tBodyAccJerk-std()-Z
21. Avg_tBodyGyro-mean()-X
22. Avg_tBodyGyro-mean()-Y
23. Avg_tBodyGyro-mean()-Z
24. Avg_tBodyGyro-std()-X
25. Avg_tBodyGyro-std()-Y
26. Avg_tBodyGyro-std()-Z
27. Avg_tBodyGyroJerk-mean()-X
28. Avg_tBodyGyroJerk-mean()-Y
29. Avg_tBodyGyroJerk-mean()-Z
30. Avg_tBodyGyroJerk-std()-X
31. Avg_tBodyGyroJerk-std()-Y
32. Avg_tBodyGyroJerk-std()-Z
33. Avg_tBodyAccMag-mean()
34. Avg_tBodyAccMag-std()
35. Avg_tGravityAccMag-mean()
36. Avg_tGravityAccMag-std()
37. Avg_tBodyAccJerkMag-mean()
38. Avg_tBodyAccJerkMag-std()
39. Avg_tBodyGyroMag-mean()
40. Avg_tBodyGyroMag-std()
41. Avg_tBodyGyroJerkMag-mean()
42. Avg_tBodyGyroJerkMag-std()
43. Avg_fBodyAcc-mean()-X
44. Avg_fBodyAcc-mean()-Y
45. Avg_fBodyAcc-mean()-Z
46. Avg_fBodyAcc-std()-X
47. Avg_fBodyAcc-std()-Y
48. Avg_fBodyAcc-std()-Z
49. Avg_fBodyAccJerk-mean()-X
50. Avg_fBodyAccJerk-mean()-Y
51. Avg_fBodyAccJerk-mean()-Z
52. Avg_fBodyAccJerk-std()-X
53. Avg_fBodyAccJerk-std()-Y
54. Avg_fBodyAccJerk-std()-Z
55. Avg_fBodyGyro-mean()-X
56. Avg_fBodyGyro-mean()-Y
57. Avg_fBodyGyro-mean()-Z
58. Avg_fBodyGyro-std()-X
59. Avg_fBodyGyro-std()-Y
60. Avg_fBodyGyro-std()-Z
61. Avg_fBodyAccMag-mean()
62. Avg_fBodyAccMag-std()
63. Avg_fBodyBodyAccJerkMag-mean()
64. Avg_fBodyBodyAccJerkMag-std()
65. Avg_fBodyBodyGyroMag-mean()
66. Avg_fBodyBodyGyroMag-std()
67. Avg_fBodyBodyGyroJerkMag-mean()
68. Avg_fBodyBodyGyroJerkMag-std()


##  Original Data Details
Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass 
Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag,
 fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
