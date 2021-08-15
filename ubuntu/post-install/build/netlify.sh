#!/usr/bin/env bash
# shellcheck disble=SC2059

# This is a bash script to build jekyll website and test it with htmlproofer
# Netlify Deployments
# Version: 1.0
# Author: Nick Brady

# gh-pages is built on gh. and deploy it on netlify to production.
# Remove .toml and scripts. & deploy the entire branch. No need to build anything as its already built.
# If something else is pushed to any branches, deploy it as branch deploy.
set -e # halt script on error

echo "---> Building Website "

function usage()
{
    #Prints out help menu
cat <<EOF
Usage: netlify-deploy [OPTIONS]
EOF
}

function generate_changelog()
{
    echo "---> Installing git-chglog (homebrew)"
    brew tap git-chglog/git-chglog
    brew install git-chglog

    
}