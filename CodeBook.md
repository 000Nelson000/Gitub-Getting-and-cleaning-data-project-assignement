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

*   Note: The `V` was removed from the column  names before matching 

* Setting the Y files column names to `Target` 

* Binding the train data sets (X,Y,Subject) into a single data set named `train` 

* Binding the train/test data sets (X,Y,Subject) into a single data set named `test` 

*   Note: A new column `aux_source` (equal to 'train' or 'test') was included so we can identify where each row came from 
* Binding the train/test full data sets into a single data set names `dt`
*  `dt` data set:10299 x 565
* Store the `dt` colum names into a vector names `aux_names`
* Getting a vector with the colum names containing `mean()` or `std()` :66 features
* Create a column names `Target_activity` containing the activity description
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
* Identifying the coluns to be aggregated and stores their names in a vector called `colstoagg`
* Calculating the mean for each variable stores in the vector `colstoagg`ans tore the result in the   `aux_summary` data set
* Write the data set `aux_summary` into the `TidyDataSet.txt` file  - 180 x 68
* Check if the `TidyDataSet.txt` file exists and is readable
* Check if the `TidyDataSet.txt  `has  the expected structure, calling the head function 
* `TidyDataSet.txt` / 'tidydata'  final columns: 

Variable name       | Desription
--------------------|------------
`Target_activity`   | Average value for this column,character
`Subject`   | Average value for this column,integer
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerMeanX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerMeanY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerMeanZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerStdX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerStdY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerStdZ`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerMeanX`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerMeanY`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerMeanZ`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerStdX`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerStdY`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerStdZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkMeanX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkMeanY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkMeanZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkStdX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkStdY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkStdZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeMeanX`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeMeanY`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeMeanZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeStdX`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeStdY`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeStdZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeJerkMeanX`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeJerkMeanY`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeJerkMeanZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeJerkStdX`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeJerkStdY`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeJerkStdZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerMagMean`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerMagStd`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerMagMean`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerMagStd`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkMagMean`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkMagStd`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeMagMean`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeMagStd`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeJerkMagMean`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopeJerkMagStd`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerMeanX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerMeanY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerMeanZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerStdX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerStdY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerStdZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkMeanX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkMeanY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkMeanZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkStdX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkStdY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkStdZ`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopeMeanX`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopeMeanY`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopeMeanZ`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopeStdX`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopeStdY`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopeStdZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerMagMean`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerMagStd`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkMagMean`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerJerkMagStd`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopeMagMean`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopeMagStd`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopeJerkMagMean`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopeJerkMagStd`   | Average value for this column,numeric
