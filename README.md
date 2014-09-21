Getting and Cleaning Data Course Project
=======

## Introduction

The purpose of this Course Project is to read two datasets of measurements produced by a wearable device and create a tidy data set. The original datasets correspond to a training and testing datasets produced by taking measurements of 30 volunteers performing several kinds of activities while wearing a smartphone. The data is split accross several files and the main goal of this project is to create a tidy data set of a subset of variables.

## Cleaning the data

The code that does the job is in the run_analysis.R file. It performs the following tasks:
* Reads the test and traning measurements (test/X_test.txt, train/X_train.txt) as well as the subject (test/subject_test.txt, train/subject_train.txt) and activity (test/y_test.txt, train/y_train.txt) data.
* Merges the test and trainig portions of each data set to obtain merged measurements, subject and activity data.
* Uses the labels found in the file features.txt file to correctly label the columns in the measurements data set.
* Selects those columns that contain "mean" or "std" in their names so that the resulting data set only contains mean and standard deviation of each variable.
* Uses the activity labels found in the file activity_labels.txt to replace the activity number by its description.
* Finally, groups the data according to the subject and the activity and computes the mean value of each feature in each group.
* The resulting dataset is sorted by subject and activity and written into tidy.txt file.

## Files in the repository

This repository contains the following files:
* run_analysis.R : the program that performes the analysis described in previous section
* tidy.txt : a tidy dataset
* CodeBook.md : the description of the variables contained in the file tidy.txt
