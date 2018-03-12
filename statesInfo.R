statesInfo<-read.csv('stateData.csv')

stateSubset<-subset(statesInfo,state.region == 1)
stateSubset
head(stateSubset,2)
dim(stateSubset)

statesInfo[statesInfo$state.region == 1,]
