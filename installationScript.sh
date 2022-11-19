#!/bin/bash

    #AUTHER: Kenneth
    #DATE: 19-11-22
#................ INSTALLATION OF PACKAGES ........................

CURRENT_OS=$(hostnamectl | grep -i Operating | awk -F " " '{print $3}')
echo 'Checking the Operating system in use .....'
sleep 5
echo 'The OS used by this system is:'
sleep 2
echo ${CURRENT_OS}

sleep 4

if [ ${CURRENT_OS} == Ubuntu ] 
then 
    echo 'success, You are using Ubuntu System' 
    apt update
    #All packages that you want to install will go here
elif [ ${CURRENT_OS} == CentOS ] 
then 
    echo 'Success, You are using CentOS system' 
    yum update
    #All packages that you want to install will go here

else 
    echo 'hmmmm, You have to use either Ubuntu or CentOS for this script' 
fi

echo 'script worked'
