# Course Project for Getting and Cleaning Data

Data sets were downloaded from the UCI Learning Repository http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) on October 25, 2014.

The  code reads in training data, test data, and the associated labels for the data types, assuming that these files have already been downloaded and unzipped into your working directory.

First, the text files are read in using different object for the data, labels, feature names, and identification numbers

The labels for the activities and the subject identifiers as given in the text files are combined with the data for each set (i.e. training and test data).

Next, a factor indicating whether the data are from the test group or the training group is added onto each data frame. This is not needed for the current assignment, but prevents loss of information about the group assignment. The data frames are merged together with a row bind.

The variables in each column are named using the features information provided in the zipped files.


Variables that record the mean and standard deviation are identified and a smaller dataset is created containing only these measurements, along with the subject ids, activity types, group. The activity codes are converted from numeric values to text descriptions according to the information provided in the zipped files.

To determine the average measurement for the retained variables by subject and activity, the data are first reshaped into a four-column format of id, activity, variable name, and measurement. This is used to summarise means for each of the measurement, which is output in a four-column format

Finally, transform the four-column format into a table form and write to a text file.




## Source of Data

Source:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - Universit√  degli Studi di Genova, Genoa I-16145, Italy. 
activityrecognition '@' smartlab.ws 
www.smartlab.ws 

## Description of data from the experimenter's website

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 