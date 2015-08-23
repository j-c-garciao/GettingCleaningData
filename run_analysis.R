## Developed by JC García-Ojeda (2015)
## More information about this script can be found in the README.md file



run_analysis <- function(){

# Load Libraries
library(data.table)
library(dplyr)
library(tidyr)

#Working with the trainning set
train1 <-read.table("UCI HAR Dataset/train/X_train.txt")
train2 <-read.table("UCI HAR Dataset/train/y_train.txt")
#DESCRIPTIVE ACTIVITY NAMES INSTEAD OF NUMBERS
#RENAME COLUMN TO ActivityNames
dt<-data.table(train2)
dt[, V1 := as.character(V1)]
dt[dt$V1=="1",]<-"Walking"
dt[dt$V1=="2",]<-"Walking Up"
dt[dt$V1=="3",]<-"Walking Down"
dt[dt$V1=="4",]<-"Sitting"
dt[dt$V1=="5",]<-"Standing"
dt[dt$V1=="6",]<-"Laying"
setnames(dt,"V1","ActivityName")

train3 <-read.table("CleaningData/UCI HAR Dataset/train/subject_train.txt")
dt2<-data.table(train3)
setnames(dt2,"V1","Subject")

train4<-cbind(train1,dt)
train5<-data.table(cbind(train4,dt2))

tempA<-select(train5,1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,
                     266:271,345:350,424:429,503,504,516,517,529,530,542,543,562,563)

#Working with the test set
test1 <-read.table("CleaningData/UCI HAR Dataset/test/X_test.txt")
test2 <-read.table("CleaningData/UCI HAR Dataset/test/y_test.txt")
#DESCRIPTIVE ACTIVITY NAMES INSTEAD OF NUMBERS
#RENAME COLUMN TO ActivityNames
dt<-data.table(test2)
dt[, V1 := as.character(V1)]
dt[dt$V1=="1",]<-"Walking"
dt[dt$V1=="2",]<-"Walking Up"
dt[dt$V1=="3",]<-"Walking Down"
dt[dt$V1=="4",]<-"Sitting"
dt[dt$V1=="5",]<-"Standing"
dt[dt$V1=="6",]<-"Laying"
setnames(dt,"V1","ActivityName")

test3 <-read.table("CleaningData/UCI HAR Dataset/test/subject_test.txt")
dt2<-data.table(test3)
setnames(dt2,"V1","Subject")

test4<-cbind(test1,dt)
test5<-data.table(cbind(test4,dt2))

tempB<-select(test5,1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,
                    266:271,345:350,424:429,503,504,516,517,529,530,542,543,562,563)

tempC<- rbind(tempA,tempB)

dt<-data.table(tempC)

#TIME
setnames(dt,"V1","timeBodyAccMean()-X")
setnames(dt,"V2","timeBodyAccMean()-Y")
setnames(dt,"V3","timeBodyAccMean()-Z")
setnames(dt,"V4","timeBodyAccStd()-X")
setnames(dt,"V5","timeBodyAccStd()-Y")
setnames(dt,"V6","timeBodyAccStd()-Z")

setnames(dt,"V41","timeGravityAccMean()-X")
setnames(dt,"V42","timeGravityAccMean()-Y")
setnames(dt,"V43","timeGravityAccMean()-Z")
setnames(dt,"V44","timeGravityAccStd()-X")
setnames(dt,"V45","timeGravityAccStd()-Y")
setnames(dt,"V46","timeGravityAccStd()-Z")
setnames(dt,"V81","timeBodyAccJerkMean()-X")
setnames(dt,"V82","timeBodyAccJerkMean()-Y")
setnames(dt,"V83","timeBodyAccJerkMean()-Z")
setnames(dt,"V84","timeBodyAccJerkStd()-X")
setnames(dt,"V85","timeBodyAccJerkStd()-Y")
setnames(dt,"V86","timeBodyAccJerkStd()-Z")
setnames(dt,"V121","timeBodyGyroMean()-X")
setnames(dt,"V122","timeBodyGyroMean()-Y")
setnames(dt,"V123","timeBodyGyroMean()-Z")
setnames(dt,"V124","timeBodyGyroStd()-X")
setnames(dt,"V125","timeBodyGyroStd()-Y")
setnames(dt,"V126","timeBodyGyroStd()-Z")
setnames(dt,"V161","timeBodyGyroJerkMean()-X")
setnames(dt,"V162","timeBodyGyroJerkMean()-Y")
setnames(dt,"V163","timeBodyGyroJerkMean()-Z")
setnames(dt,"V164","timeBodyGyroJerkStd()-X")
setnames(dt,"V165","timeBodyGyroJerkStd()-Y")
setnames(dt,"V166","timeBodyGyroJerkStd()-Z")
setnames(dt,"V201","timeBodyAccMagMean()")
setnames(dt,"V202","timeBodyAccMagStd()")
setnames(dt,"V214","timeGravityAccMagMean()")
setnames(dt,"V215","timeGravityAccMagStd()")
setnames(dt,"V227","timeBodyAccJerkMagMean()")
setnames(dt,"V228","timeBodyAccJerkMagStd()")
setnames(dt,"V240","timeBodyGyroMagMean()")
setnames(dt,"V241","timeBodyGyroMagStd()")
setnames(dt,"V253","timeBodyGyroJerkMagMean()")
setnames(dt,"V254","timeBodyGyroJerkMagStd()")

#FRECUENCY
setnames(dt,"V266","frecuencyBodyAccMean()-X")
setnames(dt,"V267","frecuencyBodyAccMean()-Y")
setnames(dt,"V268","frecuencyBodyAccMean()-Z")
setnames(dt,"V269","frecuencyBodyAccStd()-X")
setnames(dt,"V270","frecuencyBodyAccStd()-Y")
setnames(dt,"V271","frecuencyBodyAccStd()-Z")
setnames(dt,"V345","frecuencyBodyAccJerkMean()-X")
setnames(dt,"V346","frecuencyBodyAccJerkMean()-Y")
setnames(dt,"V347","frecuencyBodyAccJerkMean()-Z")
setnames(dt,"V348","frecuencyBodyAccJerkStd()-X")
setnames(dt,"V349","frecuencyBodyAccJerkStd()-Y")
setnames(dt,"V350","frecuencyBodyAccJerkStd()-Z")
setnames(dt,"V424","frecuencyBodyGyroMean()-X")
setnames(dt,"V425","frecuencyBodyGyroMean()-Y")
setnames(dt,"V426","frecuencyBodyGyroMean()-Z")
setnames(dt,"V427","frecuencyBodyGyrokStd()-X")
setnames(dt,"V428","frecuencyBodyGyroStd()-Y")
setnames(dt,"V429","frecuencyBodyGyroStd()-Z")
setnames(dt,"V503","frecuencyBodyAccMagMean()")
setnames(dt,"V504","frecuencyBodyAccMagStd()")
setnames(dt,"V516","frecuencyBodyAccJerkMagMean()")
setnames(dt,"V517","frecuencyBodyAccJerkMagStd()")
setnames(dt,"V529","frecuencyBodyGyroMagMean()")
setnames(dt,"V530","frecuencyBodyGyroMagStd()")
setnames(dt,"V542","frecuencyBodyGyroJerkMagMean()")
setnames(dt,"V543","frecuencyBodyGyroJerkMagStd()")


dt<-arrange(dt,dt$Subject,dt$ActivityName)
dt<-gather(dt,Feature,value,`timeBodyAccMean()-X`:`frecuencyBodyGyroJerkMagStd()`)
dt<-dt %>% group_by(Subject)
dt<-summarise(group_by(dt,Subject,ActivityName,Feature),mean(value))
dt<-arrange(dt,Subject,ActivityName,Feature)
dt
}