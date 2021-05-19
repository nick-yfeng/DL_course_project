datasets:

Consists of:
 - Raw MAT files of NinaPro dataset 5.
 - "data.txt" is used for training first 4 approaches
 - "data2.txt" is used for training approach 5
 - "index.txt" is obsolete, disregard the usage of it in the Jupyter Notebook codes
 - "listing.m" and "listing2.m" will create the data files using MATLAB. They should be in the same directory where the raw files are.
 - "Plot.m" creates a 4 by 4 plot table of the EMG recordings of an individual. The data is full and not easily distinguishable without zooming.

Jupyter Notebook:

 - "Gan1_out.csv", "Gan2_out.csv", "Gan3_out.csv", "Gan4_out.csv", "Gan5_out.csv" are the output files of the approaches of this project. 
 - "Project_DCGAN.ipynb", "Project_DCGAN_2.ipynb", "Project_DCGAN_3.ipynb", "Project_DCGAN_4.ipynb", "Project_DCGAN_5.ipynb" are Jupyter Notebook files
	. Note: These files will run correctly if the data text files mentioned above are in the "Colab Notebooks" of the google drive. 
	. Some comments in the codes might be obsolete and related to previous renditions. Please disregard them. 

 - "Examples.m" picks a random 16 channel EMG data from the NinaPro dataset and plots it (used as a reference mainly for authors)
 - "Plot_All_In_One.m" generates the final result seen in the report (comparison of 5 approaches with an actual random EMG strip). 
	. Given different parameters, the outcome of this file can change by showing different strips of the outputs of GANs and also the raw data.

 - "OutPlot.m" will depict the output of a DCGAN given the name of the output file, in a 4 by 4 plot. Due to limitations, the output of this file has not been used in the report.
