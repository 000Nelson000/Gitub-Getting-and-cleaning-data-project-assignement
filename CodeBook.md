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
* Store the dt's colum names into a vector names aux_names
* Getting a vector with the colum names containing mean() or std() :66 features
* Create a column names Target_activity containing the activity descriptions
* Getting a vector with columns names of interest
* Creating a new data set,dt_2, containing only the columns of interest : Called from: cat(..., "\n", file = CodebookFilePath, append = TRUE, sep = "")
* Getting a data frame with the original ('actual') colum names of the dt_2 data set, including  a new column for the new column names ('new')
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
`TimeBodyAccelerometerelerometerMeanX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerMeanY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerMeanZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerStdX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerStdY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerStdZ`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerMeanX`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerMeanY`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerMeanZ`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerStdX`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerStdY`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerStdZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerJerkMeanX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerJerkMeanY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerJerkMeanZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerJerkStdX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerJerkStdY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerJerkStdZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopeMeanX`   | Average value for this column,numeric
`TimeBodyGyroscopescopeMeanY`   | Average value for this column,numeric
`TimeBodyGyroscopescopeMeanZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopeStdX`   | Average value for this column,numeric
`TimeBodyGyroscopescopeStdY`   | Average value for this column,numeric
`TimeBodyGyroscopescopeStdZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopeJerkMeanX`   | Average value for this column,numeric
`TimeBodyGyroscopescopeJerkMeanY`   | Average value for this column,numeric
`TimeBodyGyroscopescopeJerkMeanZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopeJerkStdX`   | Average value for this column,numeric
`TimeBodyGyroscopescopeJerkStdY`   | Average value for this column,numeric
`TimeBodyGyroscopescopeJerkStdZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerMagMean`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerMagStd`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerMagMean`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerMagStd`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerJerkMagMean`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerJerkMagStd`   | Average value for this column,numeric
`TimeBodyGyroscopescopeMagMean`   | Average value for this column,numeric
`TimeBodyGyroscopescopeMagStd`   | Average value for this column,numeric
`TimeBodyGyroscopescopeJerkMagMean`   | Average value for this column,numeric
`TimeBodyGyroscopescopeJerkMagStd`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerMeanX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerMeanY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerMeanZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerStdX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerStdY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerStdZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerJerkMeanX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerJerkMeanY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerJerkMeanZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerJerkStdX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerJerkStdY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerJerkStdZ`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopeMeanX`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopeMeanY`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopeMeanZ`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopeStdX`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopeStdY`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopeStdZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerMagMean`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerMagStd`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerJerkMagMean`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerJerkMagStd`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopeMagMean`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopeMagStd`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopeJerkMagMean`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopeJerkMagStd`   | Average value for this column,numeric
