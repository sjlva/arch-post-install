#!/bin/bash

sudo pacman -S r tk
sudo R -e 'install.packages(c("languageserver", "tidyverse", "data.table"), repos="http://cran.us.r-project.org")'
