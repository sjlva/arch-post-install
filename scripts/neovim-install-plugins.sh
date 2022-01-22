#!/bin/bash

neovim +:PlugInstall
nvim '+CocInstall coc-r-lsp coc-git coc-go coc-html coc-css coc-jedi coc-json'
