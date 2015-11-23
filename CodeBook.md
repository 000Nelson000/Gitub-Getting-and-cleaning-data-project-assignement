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
* Check if the `TidyDataSet.txt` has  the expected structure, calling the head function 
* `TidyDataSet.txt` / 'tidydata'  final columns: 

Variable name       | Desription
--------------------|------------
`Target_activity`   | Average value for this column,character
`Subject`   | Average value for this column,integer
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMeanX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMeanY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMeanZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerStdX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerStdY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerStdZ`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMeanX`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMeanY`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMeanZ`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerStdX`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerStdY`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerStdZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkMeanX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkMeanY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkMeanZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkStdX`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkStdY`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkStdZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeMeanX`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeMeanY`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeMeanZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeStdX`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeStdY`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeStdZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeJerkMeanX`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeJerkMeanY`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeJerkMeanZ`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeJerkStdX`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeJerkStdY`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeJerkStdZ`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMagMean`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMagStd`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMagMean`   | Average value for this column,numeric
`TimeGravityAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMagStd`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkMagMean`   | Average value for this column,numeric
`TimeBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkMagStd`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeMagMean`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeMagStd`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeJerkMagMean`   | Average value for this column,numeric
`TimeBodyGyroscopescopescopescopescopescopescopeJerkMagStd`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMeanX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMeanY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMeanZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerStdX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerStdY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerStdZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkMeanX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkMeanY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkMeanZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkStdX`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkStdY`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkStdZ`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopescopeMeanX`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopescopeMeanY`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopescopeMeanZ`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopescopeStdX`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopescopeStdY`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopescopeStdZ`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMagMean`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerMagStd`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkMagMean`   | Average value for this column,numeric
`FrequencyBodyAccelerometerelerometerelerometerelerometerelerometerelerometerelerometerJerkMagStd`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopescopeMagMean`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopescopeMagStd`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopescopeJerkMagMean`   | Average value for this column,numeric
`FrequencyBodyGyroscopescopescopescopescopescopescopeJerkMagStd`   | Average value for this column,numeric
