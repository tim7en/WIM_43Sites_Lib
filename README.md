# WIM_43Sites_Lib
Two scripts implemented for streamstats project. First in (R language) extracts locations and ID for json type txt file of reference sites. Second, compares response files for basin characteristics from the server for integration testing with reference files. Accurate returns considered within 1% error margin. The output of the python script is a txt format file with list of dictionaries. 


#Ref_extraction.py is the main python code to run

#input.json is a json type file (can be opened with txt editors) of basin characteristics and values for the reference sites

#json_read.R is an R code to extract and create csv file with basin parameters from json file

#sitesToCheck.csv is a csv file of sites, created after running R code

#your_file.txt is a an output txt file created after running Ref_extraction.py

#BasinChar folder containing basin characteristic files created as reponse from the server after running integration testing
