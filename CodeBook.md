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
* Getting a data frame with the original ('actual') colum names of the dt_2 data set, including  a nes column for the new column names ('new')
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
* Write the data set 'aux_summary' into the 'TidyDataSet.txt' file 
* Check if the 'TidyDataSet.txt' file exists and is readable
* Check if the 'TidyDataSet.txt'  has  the expected structure, calling the head function 
* Final columns: 

Variable name       | Desription
--------------------|------------
`Target_activity`   | Average value for this column,character range ,
`Subject`   | Average value for this column,character range ,
`TimeBodyAccelerometerMeanX`   | Average value for this column,character range ,
`TimeBodyAccelerometerMeanY`   | Average value for this column,character range ,
`TimeBodyAccelerometerMeanZ`   | Average value for this column,character range ,
`TimeBodyAccelerometerStdX`   | Average value for this column,character range ,
`TimeBodyAccelerometerStdY`   | Average value for this column,character range ,
`TimeBodyAccelerometerStdZ`   | Average value for this column,character range ,
`TimeGravityAccelerometerMeanX`   | Average value for this column,character range ,
`TimeGravityAccelerometerMeanY`   | Average value for this column,character range ,
`TimeGravityAccelerometerMeanZ`   | Average value for this column,character range ,
`TimeGravityAccelerometerStdX`   | Average value for this column,character range ,
`TimeGravityAccelerometerStdY`   | Average value for this column,character range ,
`TimeGravityAccelerometerStdZ`   | Average value for this column,character range ,
`TimeBodyAccelerometerJerkMeanX`   | Average value for this column,character range ,
`TimeBodyAccelerometerJerkMeanY`   | Average value for this column,character range ,
`TimeBodyAccelerometerJerkMeanZ`   | Average value for this column,character range ,
`TimeBodyAccelerometerJerkStdX`   | Average value for this column,character range ,
`TimeBodyAccelerometerJerkStdY`   | Average value for this column,character range ,
`TimeBodyAccelerometerJerkStdZ`   | Average value for this column,character range ,
`TimeBodyGyroscopeMeanX`   | Average value for this column,character range ,
`TimeBodyGyroscopeMeanY`   | Average value for this column,character range ,
`TimeBodyGyroscopeMeanZ`   | Average value for this column,character range ,
`TimeBodyGyroscopeStdX`   | Average value for this column,character range ,
`TimeBodyGyroscopeStdY`   | Average value for this column,character range ,
`TimeBodyGyroscopeStdZ`   | Average value for this column,character range ,
`TimeBodyGyroscopeJerkMeanX`   | Average value for this column,character range ,
`TimeBodyGyroscopeJerkMeanY`   | Average value for this column,character range ,
`TimeBodyGyroscopeJerkMeanZ`   | Average value for this column,character range ,
`TimeBodyGyroscopeJerkStdX`   | Average value for this column,character range ,
`TimeBodyGyroscopeJerkStdY`   | Average value for this column,character range ,
`TimeBodyGyroscopeJerkStdZ`   | Average value for this column,character range ,
`TimeBodyAccelerometerMagMean`   | Average value for this column,character range ,
`TimeBodyAccelerometerMagStd`   | Average value for this column,character range ,
`TimeGravityAccelerometerMagMean`   | Average value for this column,character range ,
`TimeGravityAccelerometerMagStd`   | Average value for this column,character range ,
`TimeBodyAccelerometerJerkMagMean`   | Average value for this column,character range ,
`TimeBodyAccelerometerJerkMagStd`   | Average value for this column,character range ,
`TimeBodyGyroscopeMagMean`   | Average value for this column,character range ,
`TimeBodyGyroscopeMagStd`   | Average value for this column,character range ,
`TimeBodyGyroscopeJerkMagMean`   | Average value for this column,character range ,
`TimeBodyGyroscopeJerkMagStd`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerMeanX`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerMeanY`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerMeanZ`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerStdX`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerStdY`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerStdZ`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerJerkMeanX`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerJerkMeanY`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerJerkMeanZ`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerJerkStdX`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerJerkStdY`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerJerkStdZ`   | Average value for this column,character range ,
`FrequencyBodyGyroscopeMeanX`   | Average value for this column,character range ,
`FrequencyBodyGyroscopeMeanY`   | Average value for this column,character range ,
`FrequencyBodyGyroscopeMeanZ`   | Average value for this column,character range ,
`FrequencyBodyGyroscopeStdX`   | Average value for this column,character range ,
`FrequencyBodyGyroscopeStdY`   | Average value for this column,character range ,
`FrequencyBodyGyroscopeStdZ`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerMagMean`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerMagStd`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerJerkMagMean`   | Average value for this column,character range ,
`FrequencyBodyAccelerometerJerkMagStd`   | Average value for this column,character range ,
`FrequencyBodyGyroscopeMagMean`   | Average value for this column,character range ,
`FrequencyBodyGyroscopeMagStd`   | Average value for this column,character range ,
`FrequencyBodyGyroscopeJerkMagMean`   | Average value for this column,character range ,
`FrequencyBodyGyroscopeJerkMagStd`   | Average value for this column,character range ,
* key columns: 

Variable name       | Desription
--------------------|------------
* Non Key columns:
 
Variable name       | Desription
--------------------|------------
