#!/bin/bash

# Take in the arguments
string=$1
number=$2

# Convert string to kebab-case
kebab_case=$(echo $string | sed -e 's/[A-Z]/-\l&/g' -e 's/ /-/g')

# Create branch with kebab-case string and number
branch_name="$kebab_case-$number"
git checkout -b "$branch_name"