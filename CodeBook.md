# CodeBook for Getting and Cleaning Data Course Project #

## The Data Set ##

This data set is derived from the "Human Activity Recognition Using Smartphones Data Set". You can get the data set here: [Smart Phone Data Set]( http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Data Cleaning and Transformation ##

The data set was divided into two sets, training and testing.  Each of those sets were further divided into three tables: the data, the subject and the activity. Additionally there were two files that contained the feature names and the activity names.  Read the accompanying readme.txt to further understand the data set.

The following steps were taken to clean and aggregate the data:


1.  The feature names were cleaned up to make them more friendly
2.  The feature names were filtered to remove columns that did not pertain to Mean or Std
3.  The three training tables were prepped 
	- Data tables imported 
	- Data columns filtered
	- Column names applied
	- Three table combined
5.  The three testing tables were prepped
	- Data tables imported 
	- Data columns filtered
	- Column names applied
	- Three table combined
7.  The training data and the testing data were combined
8.  The activity label were applied to the combined data
9.  The tidy data set was created from the combined data by aggregating the data for the user by activity, calculating the mean for each feature

## Features ##

The following are the features that were left after the cleaning and filtering of the original features:

TimeDomain.BodyAccelerationMeanX                                  
TimeDomain.BodyAccelerationMeanY                                  
TimeDomain.BodyAccelerationMeanZ                                  
TimeDomain.BodyAccelerationStdX                                   
TimeDomain.BodyAccelerationStdY                                   
TimeDomain.BodyAccelerationStdZ                                   
TimeDomain.GravityAccelerationMeanX                               
TimeDomain.GravityAccelerationMeanY                               
TimeDomain.GravityAccelerationMeanZ                               
TimeDomain.GravityAccelerationStdX                                
TimeDomain.GravityAccelerationStdY                                
TimeDomain.GravityAccelerationStdZ                                
TimeDomain.BodyAccelerationJerkMeanX                              
TimeDomain.BodyAccelerationJerkMeanY                              
TimeDomain.BodyAccelerationJerkMeanZ                              
TimeDomain.BodyAccelerationJerkStdX                               
TimeDomain.BodyAccelerationJerkStdY                               
TimeDomain.BodyAccelerationJerkStdZ                               
TimeDomain.BodyAngularSpeedMeanX                                  
TimeDomain.BodyAngularSpeedMeanY                                  
TimeDomain.BodyAngularSpeedMeanZ                                  
TimeDomain.BodyAngularSpeedStdX                                   
TimeDomain.BodyAngularSpeedStdY                                   
TimeDomain.BodyAngularSpeedStdZ                                   
TimeDomain.BodyAngularAccelerationMeanX                           
TimeDomain.BodyAngularAccelerationMeanY                           
TimeDomain.BodyAngularAccelerationMeanZ                           
TimeDomain.BodyAngularAccelerationStdX                            
TimeDomain.BodyAngularAccelerationStdY                            
TimeDomain.BodyAngularAccelerationStdZ                            
TimeDomain.BodyAccelerationMagnitudeMean                          
TimeDomain.BodyAccelerationMagnitudeStd                           
TimeDomain.GravityAccelerationMagnitudeMean                       
TimeDomain.GravityAccelerationMagnitudeStd                        
TimeDomain.BodyAccelerationJerkMagnitudeMean                      
TimeDomain.BodyAccelerationJerkMagnitudeStd                       
TimeDomain.BodyAngularSpeedMagnitudeMean                          
TimeDomain.BodyAngularSpeedMagnitudeStd                           
TimeDomain.BodyAngularAccelerationMagnitudeMean                   
TimeDomain.BodyAngularAccelerationMagnitudeStd                    
FrequencyDomain.BodyAccelerationMeanX                             
FrequencyDomain.BodyAccelerationMeanY                             
FrequencyDomain.BodyAccelerationMeanZ                             
FrequencyDomain.BodyAccelerationStdX                              
FrequencyDomain.BodyAccelerationStdY                              
FrequencyDomain.BodyAccelerationStdZ                              
FrequencyDomain.BodyAccelerationMeanFreqX                         
FrequencyDomain.BodyAccelerationMeanFreqY                         
FrequencyDomain.BodyAccelerationMeanFreqZ                         
FrequencyDomain.BodyAccelerationJerkMeanX                         
FrequencyDomain.BodyAccelerationJerkMeanY                         
FrequencyDomain.BodyAccelerationJerkMeanZ                         
FrequencyDomain.BodyAccelerationJerkStdX                          
FrequencyDomain.BodyAccelerationJerkStdY                          
FrequencyDomain.BodyAccelerationJerkStdZ                          
FrequencyDomain.BodyAccelerationJerkMeanFreqX                     
FrequencyDomain.BodyAccelerationJerkMeanFreqY                     
FrequencyDomain.BodyAccelerationJerkMeanFreqZ                     
FrequencyDomain.BodyAngularSpeedMeanX                             
FrequencyDomain.BodyAngularSpeedMeanY                             
FrequencyDomain.BodyAngularSpeedMeanZ                             
FrequencyDomain.BodyAngularSpeedStdX                              
FrequencyDomain.BodyAngularSpeedStdY                              
FrequencyDomain.BodyAngularSpeedStdZ                              
FrequencyDomain.BodyAngularSpeedMeanFreqX                         
FrequencyDomain.BodyAngularSpeedMeanFreqY                         
FrequencyDomain.BodyAngularSpeedMeanFreqZ                         
FrequencyDomain.BodyAccelerationMagnitudeMean                     
FrequencyDomain.BodyAccelerationMagnitudeStd                      
FrequencyDomain.BodyAccelerationMagnitudeMeanFrequency            
FrequencyDomain.BodyBodyAccelerationJerkMagnitudeMean             
FrequencyDomain.BodyBodyAccelerationJerkMagnitudeStd              
FrequencyDomain.BodyBodyAccelerationJerkMagnitudeMeanFrequency    
FrequencyDomain.BodyBodyAngularSpeedMagnitudeMean                 
FrequencyDomain.BodyBodyAngularSpeedMagnitudeStd                  
FrequencyDomain.BodyBodyAngularSpeedMagnitudeMeanFrequency        
FrequencyDomain.BodyBodyAngularAccelerationMagnitudeMean          
FrequencyDomain.BodyBodyAngularAccelerationMagnitudeStd           
FrequencyDomain.BodyBodyAngularAccelerationMagnitudeMeanFrequency 
angletBodyAccelerationMean.gravity                                
angletBodyAccelerationJerkMean.gravityMean                        
angletBodyAngularSpeedMean.gravityMean                            
angletBodyAngularAccelerationMean.gravityMean                     
angleX.gravityMean                                                
angleY.gravityMean                                                
angleZ.gravityMean 