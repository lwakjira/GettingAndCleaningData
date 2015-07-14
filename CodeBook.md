This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data 

1) test files are read in to create x_test, y_test, and subject_test
2) train files are read in to create x_train, y_train, and subject_train
3) test and train are combined to create x_all, y_all, and subject_all
4) column names for mean and standard deviation are extracted from features dataset which was read in from features file
5) x_all is subsetted to only include columns identified in step 4
6) y_all column values are renamed by using decriptives obtained from activity_label dataset which was read in from actity_label file
7) column names in y_all and subject_all are renamed to be more descriptive
8) x_all, y_all, and subject_all are merged to create main dataset
9) mean of each column in the main dataset is calculated by subject and activity
10) the result in 9 is outputed to a text file. 
