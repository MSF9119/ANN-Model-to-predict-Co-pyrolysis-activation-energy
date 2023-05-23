# ANN-Model-to-predict-Co-pyrolysis-activation-energy
Reconstructing an ANN model used by a research article to predict the co-pyrolysis activation energies.

**1.0 PROJECT DESCRIPTION:**
As a personal project, in order to test my skills, I created a MATLAB script in order to replicate an ANN model that was used by a research article. I then used the performance metrics to compare my model to theirs. 

The project uses the "Mixing ratio of Oily Sludge" and the "Reaction conversion degree" values as input to predict the "Activation Energy".

**2.0 DISCLAIMER**
The authors of the article did not provide their full and original  experimental datapoints, I extracted some datapoints from the plots. Considering the fact that my datapoints are most definitely lower (in number) from the ones used by the authors, it is very logical to see worst performance in my generated model compared to theirs. 

*This project was done mostly as a learning experience (and fun!)

**3.0 DATA and MODEL**
The datapoints used in this project are extracted from the graphs and tables of the aforementioned article (reference below). 

The article is using two ANN models. I am only replicating their second one (since the first one is extremely difficult/inefficient to be replicated without proper datapoints)

The extracted dataset contains three columns (2 inputs and 1 output) based on the following description:

The ANN model (ANN model II) predicts the activation energy (Eα) during the co-pyrolysis process:
Inputs:

- Mixing ratio of OS
- Reaction conversion degree

Output:
- Activation energy (Eα)
 
Activation function:
- ReLU (Rectified Linear Unit)

**4.0 RESULTS**
Considering the fact that we were working with limited datapoints, the simulation was a success.
A couple performance metrics graphs are visible below:

Overall Performance
![image](https://github.com/MSF9119/ANN-Model-to-predict-Co-pyrolysis-activation-energy/assets/133431610/6a86bf90-fd74-4e10-8d99-d09ba5b21643)

Error Histogram:
![image](https://github.com/MSF9119/ANN-Model-to-predict-Co-pyrolysis-activation-energy/assets/133431610/8628d493-85f2-4047-b1a4-14e3917a21b0)

Training State:
![image](https://github.com/MSF9119/ANN-Model-to-predict-Co-pyrolysis-activation-energy/assets/133431610/beda0362-a2b7-4d6b-99ff-4490726d50e9)

Regression (only 35 datapoints, but still no overfitting and underfitting. The plots match the ones posted by the authors of the article pretty closely!)
![image](https://github.com/MSF9119/ANN-Model-to-predict-Co-pyrolysis-activation-energy/assets/133431610/65a6b447-e608-48ac-a510-da8f26ff68a2)


**5.0. TO RUN THE SCRIPT:**
1- Create a new empty folder.
2- Download and put the dataset labeled "dataset_ai1.csv" inside the folder.
3- Download and put the MATLAB code inside the same folder.
4- Run the script using MATLAB (tested on MATLAB 2022b)

**6.0 REFERENCE:**
Used the following article as a reference to study the methods used, extract datapoints, and to replicated one of their ANN models as practice:

*Ai, Zejian, et al. "Investigation and prediction of co-pyrolysis between oily sludge and high-density polyethylene via in-situ DRIFTS, TGA, and artificial neural network." Fuel, vol. 280, 2020, 118613.
