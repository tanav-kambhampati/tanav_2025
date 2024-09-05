#!/bin/bash

Passed_Checks=false

brew --version

ruby -v
# Bundler version, it is part of Ruby install
bundle -v

# Show active Python version, it needs to be 3.10 or better
python --version

# Show Jupyter packages, nbconvert needs to be in the list of installed
jupyter --version
mdless --version
jupyter kernelspec list  

git config --global --list


source /tmp/variables.sh

echo "Project dir: $project_dir"
echo "Project: $project"
echo "Repo: $project_repo"



source /tmp/variables.sh

echo "Using conditional statement to create a project directory and project"

cd ~    # start in home directory

# Conditional block to make a project directory
if [ ! -d $project_dir ]
then 
    echo "Directory $project_dir does not exist... making directory $project_dir"
    mkdir -p $project_dir
fi
echo "Directory $project_dir exists." 

# Conditional block to git clone a project from project_repo
if [ ! -d $project ]
then
    echo "Directory $project does not exist... cloning $project_repo"
    cd $project_dir
    git clone $project_repo
    cd ~
fi
echo "Directory $project exists."





# # Listing out the files in the repo

# echo "Navigate to project, then navigate to area wwhere files were cloned"
# cd $project
# pwd

# echo ""
# echo "list top level or root of files with project pulled from github"
# ls



# #Showing read.md stuff
# echo "Navigate to project, then navigate to area wwhere files were cloned"

# cd $project
# echo "show the contents of README.md"
# echo ""

# cat README.md  # show contents of file, in this case markdown
# echo ""
# echo "end of README.md"


# #Show env variables
# echo "Show the shell environment variables, key on left of equal value on right"
# echo ""

# env





# cd $project

# echo ""
# echo "show the secrets of .git config file"
# cd .git
# ls -l config
# echo ""
# echo "look at config file"
# cat config

