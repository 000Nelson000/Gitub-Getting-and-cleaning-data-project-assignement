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
* key columns: 

Variable name       | Desription
--------------------|------------
* Non Key columns:
 
Variable name       | Desription
--------------------|------------
