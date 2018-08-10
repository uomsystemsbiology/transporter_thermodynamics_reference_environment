#!/bin/sh

#This is a sample shell script which executes a set of commands to run
#some code and generate output.  All the executable commands are 
#commented out.

# Set up logfile
log=/vagrant/temp/run_experiments.log

# Change to project directory
#cd /home/sbl

echo Executing a sample shell script| tee -a $log
echo To use compiled MATLAB code you may need to copy it into a specific project directory | tee -a $log

echo "Then cd into the project directory and execute the code" | tee -a $log
cd /home/sbl/transporter_thermodynamics/code

echo "using a syntax like: ./RUN.sh /usr/local/MATLAB/MATLAB_Runtime/v85" | tee -a $log
sudo ./run_transporter_thermodynamics.sh /usr/local/MATLAB/MATLAB_Runtime/v93
cd ../output
pdflatex transporter_figures.tex
xdg-open ./
xdg-open transporter_figures.pdf

echo "Note that the execution directory often has to be the code directory" | tee -a $log
echo "so you will need to CD into it before execution" | tee -a $log

#sleep 2
#./Make 2>&1 | tee -a $log

echo Completed analysis | tee -a $log
$SHELL