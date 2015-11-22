

# You should create one R script called run_analysis.R that does the following. 
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names. 
# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



###Note: f_codebook calls should be interpreed as comments: These functon calls ar suposed to build the coodbook dynmically 


cat("\14")
setwd("C:\\Users\\nmota\\Documents\\Dropbox\\Data Mining\\R\\Coursera  - Getting and cleaning data\\Project")
      
##\\UCI HAR Dataset")
# getwd()
# dir()
# dir(".\\data\\UCI HAR Dataset\\train")
# dir(".\\data\\UCI HAR Dataset\\test")


##path for the md file 
CodebookFilePath<- ".\\CodeBook.md"
##Fuction that writes in a specific md file, each time we call it.
f_codebook <- function(...){
  cat(..., "\n",file=CodebookFilePath,append=TRUE, sep="")
}

f_codebook("# Code Book for the script 'run_analysis.R'")
f_codebook("Generated ",as.character(Sys.time())," during the script excution")
f_codebook("") 

###################################################

zip_file_url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zip_file_destination<-"data.zip"

data_path<-".\\data"

#IF TRUE the directory will be deleted an recreated
f_codebook("Downlaod zip file to the working directory if flag_download_zip_file =TRUE")
force_overwrite<-FALSE
##If TRUE the zip file will be downloaded
f_codebook("Extract the content of the zip file  `",zip_file_url,  "`to the folder" ,data_path, "`,if flag_extract_data_from_zip_file=TRUE")
flag_download_zip_file<-FALSE
## IF TRUE the content of th zip file will be extracted
flag_extract_data_from_zip_file<-FALSE


f_codebook("Drop and recreate the dstination folder if force_overwrite=TRUE")
if(!file.exists(data_path) & force_overwrite){unlink(data_path,recursive=TRUE)}
if(!file.exists(data_path)){
    dir.create(data_path)
}

if(flag_download_zip_file){
zip_file<-download.file(zip_file_url,zip_file_destination)
}

if (flag_extract_data_from_zip_file){
unzip("data.zip",exdir = data_path)
}

###################################################
flag_reset_coodebok<-TRUE
flag_codebook_backup_old_file<-TRUE

if (flag_reset_coodebok & file.exists(CodebookFilePath)) {
  
  if (flag_codebook_backup_old_file) file.rename(CodebookFilePath,paste0(".\\codebook","_backup_",gsub(":","_",gsub(" ","_",Sys.time())),".md"))
  #file.remove(CodebookFilePath)
  file.rename(".\\CodeBook.md",".\\CodeBook_backup.md")
}





f_codebook("## Actions performed on data:")

f_codebook("") 
f_codebook("Load data.table package")
library(data.table)

# X_train<-read.table(".\\train\\X_train.txt",header = F,)

f_codebook("* Read files using the fread function from data.table package :"," \n")

f_codebook("* Files to be read:"," \n")
f_codebook("* activity_labels.txt")
f_codebook("* features.txt")
f_codebook("* features_info.txt")
f_codebook("* README.txt")

f_codebook("* train\\X_train.txt")
f_codebook("* train\\Y_train.txt")
f_codebook("* train\\Subject_train.txt")

f_codebook("* test\\X_test.txt")
f_codebook("* test\\Y_test.txt")
f_codebook("* test\\Subject_test.txt")


activity_labels<-fread(input =".\\data\\UCI HAR Dataset\\activity_labels.txt",header=F)
features<-fread(input =".\\data\\UCI HAR Dataset\\features.txt",header=F)
features_info<-readLines(".\\data\\UCI HAR Dataset\\features_info.txt")
README<-readLines(".\\data\\UCI HAR Dataset\\README.txt")

X_train<-fread(input =".\\data\\UCI HAR Dataset\\train\\X_train.txt",header=F)
Y_train<-fread(input =".\\data\\UCI HAR Dataset\\train\\Y_train.txt",header=F)
subject_train<-fread(input =".\\data\\UCI HAR Dataset\\train\\subject_train.txt",header=F)

# names(X_train)


X_test<-fread(input =".\\data\\UCI HAR Dataset\\test\\X_test.txt",header=F)
Y_test<-fread(input =".\\data\\UCI HAR Dataset\\test\\Y_test.txt",header=F)
subject_test<-fread(input =".\\data\\UCI HAR Dataset\\test\\subject_test.txt",header=F)

# names(X_test)





# feature_match<-data.frame(cbind(
#           var=names(X_test)
#           ,v=NA
#           )
#           )


# feature_match$v<-as.integer(gsub("V","",feature_match$var))
# feature_match$var<-as.character(feature_match$var)
# feature_match$var_name<-features[match(feature_match$v,features$V1),V2]
# 
# head(feature_match)
# head(features)
# nrow(features)
# ncol(X_train)
# ncol(X_test)

f_codebook("Get the column names for the X(train and test) files, matching with features file"," \n")
f_codebook("*Note: The 'V' was removed from the column  names before matching"," \n")

names(X_train)<-
features[match(
  as.integer(gsub("V","",names(X_train)))
  ,features$V1)
     ,V2]


names(X_test)<-
  features[match(
    as.integer(gsub("V","",names(X_test)))
    ,features$V1)
    ,V2]


f_codebook("* Setting the Y files column names to 'Target'"," \n")
names(Y_train)<-"Target"
names(Y_test)<-"Target"


f_codebook("* Binding the train/test data sets (X,Y,Subject) into a single data set"," \n")
f_codebook("Note: A column names aux_source (equal to 'train' or 'test') was included so we can identify where each row came from ")
train<-cbind(X_train,Y_train,Subject=subject_train$V1,aux_source=c("Train"))
test<-cbind(X_test,Y_test,Subject=subject_test$V1,aux_source=c("Test"))

f_codebook("* Binding the train/test full data sets into a single data set (dt)")
dt<-rbind(train,test)
# table(full[,aux_source])

f_codebook("* Store the dt's colum names into a vector names aux_names")
aux_names<-names(dt)
# table(dt$Target)


# length(aux_names)
#
# grep("[a-b]|[x-z]", letters)

f_codebook("* Getting a vector with the colum names containing mean() or std() ")
mean_std_features<-aux_names[grep("mean\\(\\)|std\\(\\)" ,aux_names,ignore.case  =T)]

f_codebook("* Create a column names Target_activity containing the activity descriptions")
dt$Target_activity<-activity_labels[match (dt$Target,activity_labels$V1),V2]

f_codebook("* Getting a vector with columns names of interest")
interest_features<-c(mean_std_features,"Target_activity","Subject")

f_codebook("* Creating a nesw data set,dt_2, containing only the columns of interest")
dt_2<-dt[,interest_features,with=FALSE]

# names(dt)
# names(dt_2)

f_codebook("* Getting a data frame with the original ('actual') colum names of the dt_2 data set, including  a nes column for the new column names ('new')")

aux_names_2<-data.frame(cbind(actual=names(dt_2),new=names(dt_2)))
aux_names_2$actual<-as.character(aux_names_2$actual)
aux_names_2$new<-as.character(aux_names_2$new)


f_codebook("* Changing the column names according with the folowing set of rules:\n")


f_codebook("### Repace applied to column names\n")
f_codebook("actual       | new")
f_codebook("--------------------|------------")
f_codebook("Start with 't'           | 'Time'")
f_codebook("Start with 'f'      | 'Frequency'")
f_codebook("'acc'     | 'Accelerometer'")
f_codebook("'Gyro'     | 'Gyroscope'")
f_codebook("'BodyBody'     | 'Body'")
f_codebook("'mean'     | Mean")
f_codebook("'std'     | Std")
f_codebook("'-'     | ''")
f_codebook("'()'     | ''")


f_codebook("")



aux_names_2$new<-gsub("^t","Time",aux_names_2$new)
aux_names_2$new<-gsub("^f","Frequency",aux_names_2$new)
aux_names_2$new<-gsub("Acc","Accelerometer",aux_names_2$new)
aux_names_2$new<-gsub("Gyro","Gyroscope",aux_names_2$new)
aux_names_2$new<-gsub("BodyBody","Body",aux_names_2$new)
aux_names_2$new<-gsub("-","",aux_names_2$new)
aux_names_2$new<-gsub("mean","Mean",aux_names_2$new)
aux_names_2$new<-gsub("std","Std",aux_names_2$new)
aux_names_2$new<-gsub("\\(\\)","",aux_names_2$new)
aux_names_2$new


f_codebook("* Changing the column names according with the rules above")
names(dt_2)<-aux_names_2[match(names(dt_2),aux_names_2$actual),"new"]



# dt_resumo<-
#   dt_2[,
#      list(
#        N=.N
#        ,mean(.SD)
#      )
#      ,by=list(
#        Target_activity,Subject
#      )  
#      ]

f_codebook("* Identifying the coluns to be aggregated and stores their names in a vector called 'colstoagg' ")

colstoagg<-grep("Mean|Std",names(dt_2),value = T)

f_codebook("* Calculating the mean for each variable stores in the vector 'colstoagg' ans tore the result in the   'aux_summary' data set")

aux_summary<-dt_2[,lapply(.SD,mean),by=c("Target_activity","Subject")]
# dt_resumo<-dt_2[,lapply(.SD,mean,.SDCols=colstoagg),by=c("Target_activity","Subject")]

f_codebook("* Write the data set 'aux_summary' into the 'TidyDataSet.txt' file  - ",nrow(aux_summary)," x ",ncol(aux_summary))
write.table(x=aux_summary,file="TidyDataSet.txt",row.names = FALSE)


##Checking if the file is readable as we expect
f_codebook("* Check if the 'TidyDataSet.txt' file exists and is readable")
check_file<-read.table("TidyDataSet.txt",header = T)
f_codebook("* Check if the 'TidyDataSet.txt'  has  the expected structure, calling the head function ")
head(check_file)

# names(aux_summary)



f_codebook("* Final columns: \n")
f_codebook("Variable name       | Desription")
f_codebook("--------------------|------------")


aux_summary_cols<-names(aux_summary)
aux_summary_cols<-gsub('"','',aux_summary_cols)

# gsub('"','',col)
# gsub('"','',deparse(col))
# str(aux_summary)


class(
unlist(lapply(aux_summary,class))
)

aux_summary<-data.frame(aux_summary)

str(aux_summary)

class(aux_summary[,1])
class(aux_summary[,2])
range(aux_summary[,1])
range(aux_summary[,2])
# for(col in aux_summary_cols){
for (i in 1:length(aux_summary_cols)){
f_codebook(
  "`",aux_summary_cols[i]
  ,"`   | Average value for this column,",class(data.frame(aux_summary)[,i]) ,cat(range(data.frame(aux_summary)[,i]),sep=" : ")
  
)
}

# xxx<-range(aux_summary[,i,with=FALSE])

# class(aux_summary[,TimeBodyAccelerometerMeanX])
# 
# names(aux_summary[,"Target_activity",with=FALSE])
# class(aux_summary$TimeBodyAccelerometerMeanX)
# cat(range(aux_summary$TimeBodyAccelerometerMeanX),sep=" : ")


# f_codebook("* key columns: \n")
# f_codebook("Variable name       | Desription")
# f_codebook("--------------------|------------")
# 
# f_codebook("* Non Key columns:\n ")
# f_codebook("Variable name       | Desription")
# f_codebook("--------------------|------------")

# aux_names_2[grep("^t",aux_names_2)]
# 
# txt<-c("fscfvdf")
# gsub("^f","zzz",txt)
# 
# 
# gsub("^f","zzz",aux_names_2)
# ?gsub
# table(full$Target,full$target_activity)
# activity_labels
# unique(paste(full$Target,full$Target_activity,sep=":"))


# aux_names[grep("mean|std" ,aux_names)]

# aux_names[grep("mean\\(\\)$|std\\(\\)$" ,aux_names)]


# a<-aux_names[grep("mean\\(\\)|std\\(\\)" ,aux_names)]
# b<-aux_names[grep("mean\\(\\)|std\\(\\)" ,aux_names)]

github_path<-"C:\\Users\\nmota\\Documents\\Dropbox\\Data Mining\\GitHub\\GitHub\\Gitub-Getting-and-cleaning-data-project-assignement"

file.copy(from =  ".\\CodeBook.md", to =paste0( github_path, "\\CodeBook.md"),overwrite = TRUE )
file.copy(from =  ".\\README.md", to =paste0( github_path, "\\README.md"),overwrite = TRUE )
file.copy(from =  ".\\TidyDataSet.txt", to =paste0( github_path, "\\TidyDataSet.txt"),overwrite = TRUE )
file.copy(from =  ".\\run_analysis.R", to =paste0( github_path, "\\run_analysis.R"),overwrite = TRUE )