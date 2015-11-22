## Actions performed on data:

Load data.table package
* Read files using the fread function from data.table package : 

* Files to be read: 

* activity_labels.txt
* features.txt
* features_info.txt
* README.txt
* train\X_train.txt
* train\Y_train.txt
* train\Subject_train.txt
* test\X_test.txt
* test\Y_test.txt
* test\Subject_test.txt
Get the column names for the X(train and test) files, matching with features file 

*   Note: The 'V' was removed from the column  names before matching 

* Setting the Y files column names to 'Target' 

* Binding the train/test data sets (X,Y,Subject) into a single data set 

*   Note: A column names aux_source (equal to 'train' or 'test') was included so we can identify where each row came from 
* Binding the train/test full data sets into a single data set (dt)
*  `dt_2` data set:10299 x 564
* Store the dt's colum names into a vector names aux_names
* Getting a vector with the colum names containing mean() or std() :66 features
* Create a column names Target_activity containing the activity descriptions
* Getting a vector with columns names of interest
* Creating a new data set,dt_2, containing only the columns of interest : Called from: cat(..., "\n", file = CodebookFilePath, append = TRUE, sep = "")
* Getting a data frame with the original ('actual') colum names of the dt_2 data set, including  a new column for the new column names ('new')
*  `dt_2` data set:10299 x 68
* Changing the column names according with the folowing set of rules:

### Repace applied to column names

actual       | new
--------------------|------------
Start with 't'           | 'Time'
Start with 'f'      | 'Frequency'
'acc'     | 'Accelerometer'
'Gyro'     | 'Gyroscope'
'BodyBody'     | 'Body'
'mean'     | Mean
'std'     | Std
'-'     | ''
'()'     | ''

* Changing the column names according with the rules above
* Identifying the coluns to be aggregated and stores their names in a vector called 'colstoagg' 
* Calculating the mean for each variable stores in the vector 'colstoagg' ans tore the result in the   'aux_summary' data set
* Write the data set 'aux_summary' into the 'TidyDataSet.txt' file  - 180 x 68
* Check if the 'TidyDataSet.txt' file exists and is readable
* Check if the 'TidyDataSet.txt'  has  the expected structure, calling the head function 
* `TidyDataSet.txt` / 'tidydata'  final columns: 

Variable name       | Desription
--------------------|------------
`Target_activity`   | Average value for this column,character
`Subject`   | Average value for this column,integer
`TimeBodyAccelerometerelerometerelerometerMeanX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerMeanY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerMeanZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerStdX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerStdY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerStdZ`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerMeanX`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerMeanY`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerMeanZ`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerStdX`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerStdY`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerStdZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerJerkMeanX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerJerkMeanY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerJerkMeanZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerJerkStdX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerJerkStdY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerJerkStdZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeMeanX`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeMeanY`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeMeanZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeStdX`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeStdY`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeStdZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeJerkMeanX`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeJerkMeanY`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeJerkMeanZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeJerkStdX`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeJerkStdY`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeJerkStdZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerMagMean`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerMagStd`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerMagMean`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerMagStd`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerJerkMagMean`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerJerkMagStd`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeMagMean`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeMagStd`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeJerkMagMean`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopeJerkMagStd`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerMeanX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerMeanY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerMeanZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerStdX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerStdY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerStdZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerJerkMeanX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerJerkMeanY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerJerkMeanZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerJerkStdX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerJerkStdY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerJerkStdZ`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopeMeanX`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopeMeanY`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopeMeanZ`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopeStdX`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopeStdY`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopeStdZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerMagMean`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerMagStd`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerJerkMagMean`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerJerkMagStd`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopeMagMean`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopeMagStd`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopeJerkMagMean`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopeJerkMagStd`   | Average value for this column,numeric
