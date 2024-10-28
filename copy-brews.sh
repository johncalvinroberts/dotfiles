#!/bin/bash

# List all installed brews and save to "brews" file
brew list --formula > brews

# List all installed casks and save to "casks" file
brew list --cask > casks

echo "Brews and casks have been saved to 'brews' and 'casks' files, respectively."
