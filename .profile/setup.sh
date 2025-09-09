#!bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd "$SCRIPT_DIR"

if [[ $(hostname -s) = codespaces-* ]]; then
   echo RUNNING CODESPACES SETUP for $SCRIPT_DIR
   if [ -f bashrc ]; then
      mv ~/.bashrc ~/.bashrc.bk >& /dev/null || echo NO PREVIOUS .bashrc
      ln -s bashrc ~/.bashrc || echo FAILED LINK .bashrc
   fi
   if [ -f bash_history ]; then
      mv ~/.bash_history ~/.bash_history.bk >& /dev/null || echo NO PREVIOUS .bash_history
      ln -s bash_history ~/.bash_history || echo FAILED LINK .bash_history
   fi
fi
echo FINSHED CODESPACES SETUP
done
