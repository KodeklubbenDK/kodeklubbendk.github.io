#!/bin/bash
# Add member to collection in yaml file 

read -p "name: " MEMBER_NAME
read -p "github: " GITHUB_ACCOUNT

echo -e "- name: $MEMBER_NAME \n\tgithub: $GITHUB_ACCOUNT\n" >> ../_data/members.yaml