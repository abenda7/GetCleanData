run_analysis <- function () {
## load measurement variables and activity labels
feat  <- read.table("./UCI HAR Dataset/features.txt")
actl  <- read.table("./UCI HAR Dataset/activity_labels.txt")

## reads the subject , activity and measurement tables for test group 
stst  <- read.table("./UCI HAR Dataset/test/subject_test.txt")
ytst  <- read.table("./UCI HAR Dataset/test/y_test.txt")
xtst  <- read.table("./UCI HAR Dataset/test/x_test.txt"
                ,colClasses = "numeric",comment.char = "")
## create a data frame for the test group
dftst <- cbind(stst,ytst,xtst)

## reads the subject , activity and measurement tables for training group 
strn <- read.table("./UCI HAR Dataset/train/subject_train.txt")
ytrn  <- read.table("./UCI HAR Dataset/train/y_train.txt")
xtrn  <- read.table("./UCI HAR Dataset/train/x_train.txt",colClasses = "numeric",comment.char = "")

## create a data frame for the train group
dftrn <- cbind(strn,ytrn,xtrn)

## step 1 from  course instructions
## merges the training and test sets to create one data set (dfall)
dfall <- rbind(dftst,dftrn)

## step 2 will be done after step 4
## so as to apply the filter on mean and std variables once the variables 
## have been labeld accordingly    

## step 3 from course instructions
## Uses descriptive activity names to name the activities of the data set  
dfall[,2] <- actl[dfall[,2], 2]

## step 4  in course instructions 
## labels the data set with descriptive variable names 
names(dfall) <- c("subject","activity",as.vector(feat$V2))


## step 2 from course instructions
## Extracts only the measurements on the mean and standard deviation for each measurement
## Assumption is any measurement(feature) having mean() and std() in names are to be included
## remove any duplicated columns first

library(dplyr) 
dfall <- dfall[ !duplicated(names(dfall)) ]
dfsel <- select(dfall, subject, activity,matches("(mean|std)\\(\\)"))


## step 5 from course instructions
## FRom data in step 4, creates a second, independent tidy data set with the 
## average of each variable for each activity and subject
dfmean <- aggregate(dfsel[,3:68],list(dfsel$subject,dfsel$activity), mean)
names(dfmean)[1] <- "Subject"
names(dfmean)[2] <- "Activity"
names(dfmean)[3:68] <- paste("Avg_",names(dfmean[3:68]), sep="")

dfmean <- dfmean[order(dfmean$Subject),]
write.table(dfmean,file="UC1HAR.txt",row.name=FALSE)

}

run_analysis()

##  to re-invoke the function
##  run_analysis()

## to view the output UC1HAR.txt in R use the code below
## data <- read.table("UC1HAR.txt", header = TRUE)
## View(data)
