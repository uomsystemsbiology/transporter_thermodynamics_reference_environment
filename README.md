### What is this? 
This it the template for the MATLAB Runtime Reference environment.  This environment contains a set of scripts
which install the MATLAB Compiler Runtime for execution of compiled MATLAB code.

### How do I use it?

```
$ git clone https://github.com/uomsystemsbiology/transporter_thermodynamics_reference_environment.git
$ cd transporter_thermodynamics_reference_environment
$ vagrant up
```
This will build the reference environment, download the MATLAB Compiler Runtime
and copy a template execution script into the desktop and in the root directory.
You can download or include your own compiled MATLAB code and run it using a syntax
like the one in the 'run_experiments.sh' execution script.  