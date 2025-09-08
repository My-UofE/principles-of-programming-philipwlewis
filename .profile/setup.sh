#!bash

for PROFILE in "/workspaces/*/.profile"; do

if [[ $(hostname -s) = codespaces-* ]]; then
   echo RUNNING CODESPACES SETUP for $REPO
   if [ -f $PROFILE/bashrc ]; then
      echo SETTING UP BASHRC
      mv ~/.bashrc ~/.bashrc.bk || echo NO PREVIOUS .bashrc
      mv ~/.bash_history ~/.bash_history.bk || echo NO PREVIOUS .bash_history
      ln -s $PROFILE/bashrc ~/.bashrc || echo FAILED LINK .bashrc
      ln -s $PROFILE/bash_history ~/.bash_history || echo FAILED LINK .bash_history
   fi
fi

done
