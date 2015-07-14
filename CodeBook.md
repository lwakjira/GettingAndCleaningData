This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data 

The variables created are as follows:
1) x_test, y_test, and subject_test x_train, y_train, and subject_train - contain data from test files downloads 
2) x_all, y_all, and subject_all - contain merged test, train, and subject data from step 1 
4) features - contains descriptive names for the x_all data. comes from features downloaded file 
5) mean_std_filter - contains only column names with mean or standard deviation in features 
6) x_all- subset of x_all to only include columns identified in mean_std_filter
  Note: y_all column values are renamed by using decriptives obtained from activity_label dataset which was read in from actity_label file
  Note: column names in y_all and subject_all are renamed to be more descriptive
7) data_all - contains merged data from x_all, y_all, and subject_all 
8) data_all_grpd - contains the mean of each column in the main dataset by subject and activity
  Note: the result in 9 is outputed to a text file. 
