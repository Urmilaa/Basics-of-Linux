#!/bin/bash

create_directory(){

       mkdir demoBash


}

if ! create_directory ;

then
       echo "The code is being exited as directory already exists"
       exit 1
fi


echo "This shouldn't work because code is interrupted"
