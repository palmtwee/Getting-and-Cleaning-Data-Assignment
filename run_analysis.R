testset <- "./test/"
## Path to the test sets


testset_list <- list.files(path=testset, pattern="*.txt") 
for (i in 1:length(testset_list)){
        
        assign(testset_list[i], 
               
               read.table(paste(testset, testset_list[i], sep=''))
               
        )}
## read the .txt files in /test

trainset <- "./train/"
## Path to the trial sets

trainset_list <- list.files(path=trainset, pattern="*.txt") 
for (i in 1:length(trainset_list)){
        
        assign(trainset_list[i], 
               
               read.table(paste(trainset, trainset_list[i], sep=''))
               
        )}
## read the .txt files in /train

train <- c("train") ## create category name for training set
trainset <- cbind(subject_train.txt,X_train.txt,train) ##create training dataset
colnames(trainset)[c(1,563)] <- c("Participant Num","Category")
## Rename columns of training dataset

test <- c("test") ## create category name for test set
testset <- cbind(subject_test.txt, X_test.txt, test) ##create test dataset
colnames(testset)[c(1,563)] <- c("Participant Num", "Category")

data <- rbind(testset,trainset) ##create one big dataset for train and test
## per Goal 1.

features <- read.table("./features.txt", header=FALSE) ## read features
rows <- sort(c(grep("*mean*",features[,2]),grep("*std*",features[,2])))
## Finds the rows that contain mean and standard deviations
cols <- rows+1 ## compensate for added column of Participant Number
filtereddata <- data[,c(1,cols,563)] ## Extract only means and std for Goal 2.

wanted <- features[cols,] ## extract descriptive column activity names
name <- wanted[,2] ## assign descriptive names to variable for Goal 3.
names <- as.character(name) ## reclassify names as factor into characters
colnames(filtereddata)[c(2:(length(colnames(filtereddata))-1))] <- names
## assign names to filtereddata dataset for Goal 4.

filtereddata$Category <- as.numeric(filtereddata$Category)
## convert to numeric so mean function will not return NA
meandata <- aggregate(filtereddata, by=list(filtereddata$`Participant Num`), FUN=mean)
## aggregate data to find column means by factor of Participant Num
meandata$Category <- factor(meandata$Category)
## reorganize factors to label test or train subject
levels(meandata$Category)[levels(meandata$Category)=="1"] <- "test"
levels(meandata$Category)[levels(meandata$Category)=="2"] <- "train"

## relabel factors
filtereddata$Category <- factor(filtereddata$Category)
levels(filtereddata$Category)[levels(filtereddata$Category)=="1"] <- "test"
levels(filtereddata$Category)[levels(filtereddata$Category)=="2"] <- "train"
## relabel factors in filtereddata

meandata <- meandata[,-1]
## remove extraneous column

print(filtereddata) ##for Goals 1-4
print(meandata) ## for Goal 5




