#Pseudocode for a sensitivity analysis
# Define parameter values; use a vector to hold a range of values for theparameter(s) you wish to vary.
GrowthRate<-seq(0.05:1, by=0.05)
ttCollect<-5
N0<-50
KK<-100
rdVec<-seq(-0.5,0.5,by=0.1)


# Initialize a matrix to collect all outputs
parameter<-matrix(NA,nrow=1,ncol=length(GrowthRate))
# Use a for loop to repeatedly run the model and collect output
for (ii in 1:length(GrowthRate)){discreteLogisticFun(ii,100,5000,200)
                                 logisticOutput<-discreteLogisticFun(N0,rd=rdVec[ii],KK)}
                                 

                                
# NOTE: this for loop is NOT over the timesteps of the model, it is over the set
# of different parameter values for which you want to run the model.
# Use your function to run the model in a single line within the loop.
# analyze results