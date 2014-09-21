Tidy Data Set Codebook
=======

## Introduction

In the original data sets provided by [1], 30 volunteers performed six types of activies while wearing a smartphone on their waist. The resulting measurements were post-processed and, among other, a 561-feature data set for each subject and each type of activity was provided. Each row in the data set corresponds to a particular time window.

The purpose of this project is to extract only those features that correspond to 

## Tidy data set

Using the run_analysis.R program provied here, a tidy data set has been produced. It is meant to provide the data grouped by test subjects and the type of activity they performed. The tidy data set can be thought of as a summary of the original data sets, since it gives the mean of each feature group by a subject and a type of activity. The tidy data set contains the following variables:

* SUBJECT: ID of the volunteer performing the exercise (1, 2, 3, ..., 30)
* ACTIVITY: type of activity performed (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
* variables beginning with "t":
  * time averages in a 2.56 second window
  * the last letter gives an axis along which the feature is measured (X, Y, Z)
  * mean values are denoted by mean()
  * standard deviations are denoted by std()
  * the portion of the variable name between the letter "t" and mean/std denotes the feature, for example:
    * tBodyAcc-mean()-Y: mean of the Y component of the body contribution to the total acceleration
    * tGravityAcc-std()-Z: standard deviation of the Z component of the gravity contribution to the total acceleration
  * variables beginning with "f":
    * frequency domain signals obtained by applying a Fast Fourier Transform to some signals
    * the naming convention follows the same rules as the time domain variables
* all features have been produced by averaging variables normalized between [-1, 1], and are thus also limited to that interval



## References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
