#  Shell for Install vim config
# Require Git and auto install Vim-Plug


printf "\033[33mChecking  Start...\033[0m\n"
printf "\033[36mChecking  Git install ...\033[0m\n"
hash git 2>/dev/null || { echo >&2 "Require Git is not installed! Please install Git before you prefix config aix"; exit 1; }
git --version 
printf "\033[36mChecking Git Completed!\033[0m\n"
printf "\033[33mChecking Dir\033[0m\n"
if [ !-d "$HOME/.vim" ]; then 
    echo "Make All with $HOME Directory Path"
    printf "\n"
    echo " [- .vim"
    echo " [- undodir [ -- Generator Undo file -- ]"
    echo " [- autoload [ -- Autoload directory -- ]"
    echo " [- plugged [ -- Plugin directory -- ]"
    echo "-] " 
    printf "\n"

    mkdir $HOME/.vim
    mkdir $HOME/.vim/undodir
    mkdir $HOME/.vim/autoload
    mkdir $HOME/.vim/plugged
fi


if [ !-d "$HOME/.vim/plugged" ]; then 
    echo "Make dir --plugged"
    mkdir $HOME/.vim/plugged
fi



if [ !-d "$HOME/.vim/autoload" ]; then 
    echo "Make dir --autoload"
    mkdir $HOME/.vim/autoload
fi


if [ !-d "$HOME/.vim/undodir" ]; then 
    echo "Make dir --undodir"
    mkdir $HOME/.vim/undodir
fi


echo "Clone Vim-Plug Plugin"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

printf "\033[33mVim-Plug has Install && Exist\033[0m\n"

printf "\033[33mChecking Completed!\033[0m\n"

printf "\033[36mCopy new files to the HOME PATH...\033[0m\n"

printf "\n"
echo " [- $HOME/"
echo "   |- .vimrc       [ -- Vim config -- ]"
echo "   |- .tmux.conf   [ -- Tmux config -- ]"
echo " -] "
printf "\n"


# Copy file in to path
cp -f .vimrc $HOME/


if [! -f "$HOME/.tmux.conf"]; then
    printf "\033[36mCopy tmux.conf!033[0m\n"
    cp -f .tmux.conf $HOME/
fi
printf "\033[36mCopy Completed, Finish Install !\033[0m\n"
printf "\033[33mPlease Checking Completed!\033[0m\n"
printf "\n"
exit 0;
