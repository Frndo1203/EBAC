#!/usr/bin/env bash

cd infrastructure

# Initiates variable for reutilization during validations on directory
PACKAGE="package"

# Creates dir and installs all the dependencies of lambda function
if [ -d $PACKAGE ]
then
    echo "The directory '$PACKAGE' already exists."
else
    echo "================================================="
    echo "Creating directory '$PACKAGE'"
    mkdir $PACKAGE
    echo "Directory '$PACKAGE' succesfully created."
    echo "================================================="
fi 

# Declares requirements variable for lambda instance
FILE_REQUIREMENTS=../etl/lambda_requirements.txt


# Verifies if lambda_requirements.txt exists
if [ -f $FILE_REQUIREMENTS ]
then
    echo "================================================="
    echo "Installing located dependencies in '$FILE_REQUIREMENTS'"
    pip install --target ./package -r $FILE_REQUIREMENTS
    echo "Dependencies succesfully installed."
    echo "=================================================" 
fi

cd $PACKAGE

# Variable for lambda function
LAMBDA_FUNCTION=../../etl/lambda_function.py

# Verifies if lambda_function.py exists
if [ -f $LAMBDA_FUNCTION ]
then
    echo "================================================="
    echo "Copying handler function"
    cp $LAMBDA_FUNCTION
    echo "Compacting lambda_function_payload.zip"
    zip -r9 ../lambda_function_payload.zip
    echo "Dependencies succesfully compressed."
    echo "=================================================" 
fi

cd ..