
coursera getdata project
========================

This repo contains an `R` script that makes a tidy dataset from the
[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

This work is part of the [Getting and Cleaning Data](https://www.coursera.org/course/getdata) course's project.


dependencies
----------

The `R` script depends on the [dplyr](http://cran.r-project.org/web/packages/dplyr/index.html) package. You may install it with `install.packages("dplyr")`


running
-------

To run the script, follow these steps:

0. make sure you have **[R](http://www.r-project.org/)** installed
1. download and unzip the original dataset from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
2. clone this repo or download the `run_analysis.R` script
3. start `R` if you haven't already
4. set the working directory to the root dataset directory ( `setwd(<dataset-dir>)` )
5. source the script with full path ( `source("<script-dir>/run_analysis.R")` )

After running, the script will write a file named `tidydata.txt` into the working directory.


code book
--------

The code book for the generated tidy dataset is avaiable at [blob/master/CodeBook.md](blob/master/CodeBook.md)

