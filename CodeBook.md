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

*Note: The 'V' was removed from the column  names before matching 

* Setting the Y files column names to 'Target' 

* Binding the train/test data sets (X,Y,Subject) into a single data set 

Note: A column names aux_source (equal to 'train' or 'test') was included so we can identify where each row came from 
* Binding the train/test full data sets into a single data set (dt)
* Store the dt's colum names into a vector names aux_names
* Getting a vector with the colum names containing mean() or std() 
* Create a column names Target_activity containing the activity descriptions
* Getting a vector with columns names of interest
* Creating a nesw data set,dt_2, containing only the columns of interest
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
`TimeBodyAccelerometerMeanX`   | Average value for this column,numeric
`TimeBodyAccelerometerMeanY`   | Average value for this column,numeric
`TimeBodyAccelerometerMeanZ`   | Average value for this column,numeric
`TimeBodyAccelerometerStdX`   | Average value for this column,numeric
`TimeBodyAccelerometerStdY`   | Average value for this column,numeric
`TimeBodyAccelerometerStdZ`   | Average value for this column,numeric
`TimeGravityAccelerometerMeanX`   | Average value for this column,numeric
`TimeGravityAccelerometerMeanY`   | Average value for this column,numeric
`TimeGravityAccelerometerMeanZ`   | Average value for this column,numeric
`TimeGravityAccelerometerStdX`   | Average value for this column,numeric
`TimeGravityAccelerometerStdY`   | Average value for this column,numeric
`TimeGravityAccelerometerStdZ`   | Average value for this column,numeric
`TimeBodyAccelerometerJerkMeanX`   | Average value for this column,numeric
`TimeBodyAccelerometerJerkMeanY`   | Average value for this column,numeric
`TimeBodyAccelerometerJerkMeanZ`   | Average value for this column,numeric
`TimeBodyAccelerometerJerkStdX`   | Average value for this column,numeric
`TimeBodyAccelerometerJerkStdY`   | Average value for this column,numeric
`TimeBodyAccelerometerJerkStdZ`   | Average value for this column,numeric
`TimeBodyGyroscopeMeanX`   | Average value for this column,numeric
`TimeBodyGyroscopeMeanY`   | Average value for this column,numeric
`TimeBodyGyroscopeMeanZ`   | Average value for this column,numeric
`TimeBodyGyroscopeStdX`   | Average value for this column,numeric
`TimeBodyGyroscopeStdY`   | Average value for this column,numeric
`TimeBodyGyroscopeStdZ`   | Average value for this column,numeric
`TimeBodyGyroscopeJerkMeanX`   | Average value for this column,numeric
`TimeBodyGyroscopeJerkMeanY`   | Average value for this column,numeric
`TimeBodyGyroscopeJerkMeanZ`   | Average value for this column,numeric
`TimeBodyGyroscopeJerkStdX`   | Average value for this column,numeric
`TimeBodyGyroscopeJerkStdY`   | Average value for this column,numeric
`TimeBodyGyroscopeJerkStdZ`   | Average value for this column,numeric
`TimeBodyAccelerometerMagMean`   | Average value for this column,numeric
`TimeBodyAccelerometerMagStd`   | Average value for this column,numeric
`TimeGravityAccelerometerMagMean`   | Average value for this column,numeric
`TimeGravityAccelerometerMagStd`   | Average value for this column,numeric
`TimeBodyAccelerometerJerkMagMean`   | Average value for this column,numeric
`TimeBodyAccelerometerJerkMagStd`   | Average value for this column,numeric
`TimeBodyGyroscopeMagMean`   | Average value for this column,numeric
`TimeBodyGyroscopeMagStd`   | Average value for this column,numeric
`TimeBodyGyroscopeJerkMagMean`   | Average value for this column,numeric
`TimeBodyGyroscopeJerkMagStd`   | Average value for this column,numeric
`FrequencyBodyAccelerometerMeanX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerMeanY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerMeanZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerStdX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerStdY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerStdZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerJerkMeanX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerJerkMeanY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerJerkMeanZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerJerkStdX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerJerkStdY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerJerkStdZ`   | Average value for this column,numeric
`FrequencyBodyGyroscopeMeanX`   | Average value for this column,numeric
`FrequencyBodyGyroscopeMeanY`   | Average value for this column,numeric
`FrequencyBodyGyroscopeMeanZ`   | Average value for this column,numeric
`FrequencyBodyGyroscopeStdX`   | Average value for this column,numeric
`FrequencyBodyGyroscopeStdY`   | Average value for this column,numeric
`FrequencyBodyGyroscopeStdZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerMagMean`   | Average value for this column,numeric
`FrequencyBodyAccelerometerMagStd`   | Average value for this column,numeric
`FrequencyBodyAccelerometerJerkMagMean`   | Average value for this column,numeric
`FrequencyBodyAccelerometerJerkMagStd`   | Average value for this column,numeric
`FrequencyBodyGyroscopeMagMean`   | Average value for this column,numeric
`FrequencyBodyGyroscopeMagStd`   | Average value for this column,numeric
`FrequencyBodyGyroscopeJerkMagMean`   | Average value for this column,numeric
`FrequencyBodyGyroscopeJerkMagStd`   | Average value for this column,numeric
