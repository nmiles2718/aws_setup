#!/usr/bin/env bash

if [[ $# -lt 2 ]] ; then
    echo "Not enough arguments supplied"
    echo "Required Positional Arguments:"
    echo "1. EC2 public DNS"
    echo "2. EC2 private ssh key"
    exit 1
fi

# Copy credentials to EC2 instanace
ec2_ip=$1  # first arg is IP address of instance
keyname=$2
aws_dir=~/.aws/
aws_ssh_key=$aws_dir$keyname

# log into the instance
ssh -i "$aws_ssh_key" ec2-user@$ec2_ip