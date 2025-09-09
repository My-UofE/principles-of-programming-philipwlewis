#!bash

cd "$1"

if [[ $(hostname -s) = codespaces-* ]]; then
   echo RUNNING CODESPACES SETUP for $REPO
   if [ -f ".profile/bashrc" ]; then
      mv ~/.bashrc ~/.bashrc.bk >& /dev/null || echo NO PREVIOUS .bashrc
      ln -s "$PROFILE/bashrc" ~/.bashrc || echo FAILED LINK .bashrc
   fi
   if [ -f ".profile/bash_history" ]; then
      mv ~/.bash_history ~/.bash_history.bk >& /dev/null || echo NO PREVIOUS .bash_history
      ln -s "$PROFILE/bash_history" ~/.bash_history || echo FAILED LINK .bash_history
   fi
fi
echo FINSHED CODESPACES SETUP
done
