#Dear User - please update to your correct Working drive prior to execution of the code, 
#and ensure the respective datasets with originals names are downloaded to the "Source Data" folder.

# Set the working drive and verify location ---
setwd("C:/Users/Porter/Documents/R Source/Week 4 - Getting Assign/Source Data/")
getwd()


# Loads all relevant source files ---
testdata <- read.table("X_test.txt")
traindata <- read.table("X_train.txt")
testlabel <- read.table("Y_test.txt")
trainlabel <- read.table("Y_train.txt")
activitylabel <- read.table("activity_labels.txt")
subjecttrain <- read.table("subject_train.txt")
subjecttest <- read.table("subject_test.txt")
featurelabel <- read.table("features.txt")


#Establishes initial data frame structure for TEST and TRAINING data --- 
testdata <- cbind(testlabel,subjecttest,testdata)
traindata <- cbind(trainlabel,subjecttrain,traindata)


#Transposes the variable names "features", and enhances with with two additional variable names "activity" and subject"
featurelabel <- data.frame(t(featurelabel))
featurelabel <- cbind(data.frame(c("","activity")),data.frame(c("","subject")),featurelabel)
featurelabel <- featurelabel[2,]


#Assigns the variable names to the data sets, and merges in the "activity names" ---
for (i in 1:563){
        colnames(testdata)[i] <- as.character(featurelabel[1,i])
}
colnames(activitylabel) <- c("ref","activityname")
testdata <- merge(activitylabel,testdata,by.x="ref",by.y="activity")


for (i in 1:563){
        colnames(traindata)[i] <- as.character(featurelabel[1,i])
}
colnames(activitylabel) <- c("ref","activityname")
traindata <- merge(activitylabel,traindata,by.x="ref",by.y="activity")


#Combines both TEST and TRAIN datasets into one set ---
combinedata <- rbind(testdata,traindata)


#Extracts only those variables which are either the "activity name", "subject", 
#and contain either mean or standard deviation measures ---
colextract <- c("activityname","subject",grep("mean|std",colnames(combinedata),value=TRUE))
combinedata <- combinedata[colextract]


#Calculates a new data frame which produces the average of all measures by "activity names", "subject", and variable ---
meandata <- expand.grid(t(activitylabel[2]),c(1:30))
for (i in 3:81){

        meanresult <- aggregate(combinedata[,i], list(combinedata$activityname,combinedata$subject), mean)
        meandata <- merge(meandata,  meanresult, by.x=c("Var1","Var2"), by.y=c("Group.1","Group.2"))
}
colnames(meandata) <- colnames <- colnames(combinedata[1:81])


#Exports the new dataset containing the mean calculated values ---
write.csv(meandata,"tidy_meandata.csv")
