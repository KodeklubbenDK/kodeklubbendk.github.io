#!/bin/bash
# Add post to kodeklubben.github.io

# Space between date and format is a must 
# The equal sign must be right after variable and just before string without no space between
CURRENT_DATE=`date +"%Y-%m-%d %k:%M:%S %z"`
echo "$CURRENT_DATE"

# Prompt the user and read input into variable
read -p "filename: " FILE_NAME

# Change directory to /_posts
cd ../_posts/

# Make sure file exists and it has the correct file type
[[ "$FILE_NAME" == "" ]] && { echo "Please provide the path to a *.md file"; exit 1; }
[[ ! $FILE_NAME == *".md"* ]] && { echo "It is only possible to use *.md files"; exit 1; }
[[ ! -f "$FILE_NAME" ]] && {  echo "File does not exist..."; exit 1; }

# Prompt for layout - default is post
read -p "layout: " POST_LAYOUT
[[ "$LAYOUT_NAME" == "" ]] && { LAYOUT_NAME="post"; }

# Prompt for post title - default is no title
read -p "title: " POST_TITLE

# Prompt for categories - default is none
read -p "categories: " POST_CATEGORIES

# Prompt for author - default gives an error and exits
read -p "author: " POST_AUTHOR

# array of lines to append to file
lines=("---" "author: $POST_AUTHOR" "categories: $POST_CATEGORIES" "date: $CURRENT_DATE" "title: $POST_TITLE" "layout: $POST_LAYOUT" "---")

for line in "${lines[@]}"
do
    echo -e "$line" | cat - $FILE_NAME > temp && mv temp $FILE_NAME
done

FILE_DATE=`date +"%Y-%m-%d"`
POST_TITLE_LOWER=$(echo "$POST_TITLE" | tr '[:upper:]' '[:lower:]')
POST_TITLE_REPLACED=${POST_TITLE_LOWER//" "/-}

cp test.md $FILE_DATE-$POST_TITLE_REPLACED".md"
rm -rf $FILE_NAME".md"

# For future use update this script 
# to take a md file from draft folder and publish into 
# _posts folder
