# Using Conda for Reproducible Research

## Installing Conda

The instructions here assume you have a little experience working on the command line interface of the UNIX shell. 
If you don't know how to operate the command line in UNIX, or if you aren't sure, look through [these tutorials](http://swcarpentry.github.io/shell-novice/).
   
This tutorial is designed to be used within this repository.Before starting with the instructions below, 
download this repository into a convenient location on your computer using the command line: 
```git clone https://github.com/JMAStough/labmeeting_6_17_2019```
You can then change directory into this folder 
```cd labmeeting_6_17_2019```
and begin the instructions below.

### Mac & Linux

First, you'll need to download the files

Mac - ```curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh```
Linux - ```wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh```

Then, you'll need to run the installation using:
```bash Miniconda3-latest-Linux-x86_64.sh```

Follow the prompts on the installer screens and accept the default settings. You can change these settings later 
if you don't like them.

Close and re-open your command terminal so that the changes can take effect.

Test your installation by running the command:
```conda list```

If the command runs with no errors or warnings, you are ready for lab meeting!

## Removing Conda

Get through lab meeting and decide you don't like conda? That's fine! Just run the following command
to delete the entire installation!

```rm -rf ~/miniconda3```
