---
title: "CodeBook  for the Final Project of the course **Getting and Cleaning Data**"
output: html_document
---
This file describes the variables, the data, and any transformations or work I performed to clean up the data from the **Human Activity Recognition Using Smartphones Data Set ** study (refer to [link] [id2], the dataset can be download from [link][id3])


The **Variables** of the data are listed below with their clasess and types:


Variable |    class  |    type
---------|-----------|--------                 
Subject  |  integer  | integer
ActivityName |character  |character
Feature|   factor | integer
mean(value) |  numeric  |  double


The information shown above was elaborated by applying the script introduced in the following [link] [id]. In what follows, the data associated with each of the variable is described.


Variable `Subject` takes values `1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30`; 
each representing a subject for who activity measurements were recorded


Variable `ActivityName` takes values `"Walking","Walking Up","Walking Down","Sitting","Standing","Laying"`; each representing a specific activity


Variable `Feature` takes values `timeBodyAccMean()-X, timeBodyAccMean()-Y, timeBodyAccMean()-Z,` `timeBodyAccStd()-X, timeBodyAccStd()-Y, timeBodyAccStd()-Z, timeGravityAccMean()-X,` `timeGravityAccMean()-Y, timeGravityAccMean()-Z, timeGravityAccStd()-X, timeGravityAccStd()-Y,` `timeGravityAccStd()-Z, timeBodyAccJerkMean()-X, timeBodyAccJerkMean()-Y, timeBodyAccJerkMean()-Z,` `timeBodyAccJerkStd()-X, timeBodyAccJerkStd()-Y, timeBodyAccJerkStd()-Z, timeBodyGyroMean()-X,` `timeBodyGyroMean()-Y, timeBodyGyroMean()-Z, timeBodyGyroStd()-X, timeBodyGyroStd()-Y,` `timeBodyGyroStd()-Z, timeBodyGyroJerkMean()-X, timeBodyGyroJerkMean()-Y, timeBodyGyroJerkMean()-Z,` `timeBodyGyroJerkStd()-X, timeBodyGyroJerkStd()-Y, timeBodyGyroJerkStd()-Z, timeBodyAccMagMean(),` `timeBodyAccMagStd(), timeGravityAccMagMean(), timeGravityAccMagStd(), timeBodyAccJerkMagMean(),` `timeBodyAccJerkMagStd(), timeBodyGyroMagMean(), timeBodyGyroMagStd(), timeBodyGyroJerkMagMean(),` `timeBodyGyroJerkMagStd(), frecuencyBodyAccMean()-X, frecuencyBodyAccMean()-Y, frecuencyBodyAccMean()-Z,` `frecuencyBodyAccAccStd()-X, frecuencyBodyAccAccStd()-Y, frecuencyBodyAccAccStd()-Z,` `frecuencyBodyAccJerkMean()-X, frecuencyBodyAccJerkMean()-Y, frecuencyBodyAccJerkMean()-Z,`
`frecuencyBodyAccJerkStd()-X, frecuencyBodyAccJerkStd()-Y, frecuencyBodyAccJerkStd()-Z,` `frecuencyBodyGyroMean()-X, frecuencyBodyGyroMean()-Y, frecuencyBodyGyroMean()-Z,` `frecuencyBodyGyrokStd()-X, frecuencyBodyGyroStd()-Y, frecuencyBodyGyroStd()-Z,` `frecuencyBodyAccMagMean(), frecuencyBodyAccMagStd(), frecuencyBodyAccJerkMagMean(),` `frecuencyBodyAccJerkMagStd(), frecuencyBodyGyroMagMean(),frecuencyBodyGyroMagStd(),`
`frecuencyBodyGyroJerkMagMean(), frecuencyBodyGyroJerkMagStd()`; each represententing specific 3-axial linear acceleration and 3-axial angular velocity.


[id]: http://r.789695.n4.nabble.com/variable-labels-to-accompany-data-frame-td813131.html "link1"
[id2]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "link2"
[id3]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "link3"