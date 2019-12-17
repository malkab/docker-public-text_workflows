#!/bin/bash

# This script is meant to be run inside the 
# text-workflows-install-container to configure paths and memory


# Paths

echo MANPATH=$MANPATH:/usr/local/texlive/2019/texmf-dist/doc/man >> ~/.bashrc

echo INFOPATH=$INFOPATH:/usr/local/texlive/2019/texmf-dist/doc/info >> ~/.bashrc

echo PATH=$PATH:/usr/local/texlive/2019/bin/x86_64-linux >> ~/.bashrc

. ~/.bashrc


# Memory config

cp /ext-src/assets/texmf.cnf /usr/local/texlive/2019/texmf.cnf

fmtutil-sys --all
