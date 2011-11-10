" Set pathogen
"call pathogen#runtime_append_all_bundles()
call pathogen#infect()
call pathogen#helptags()

source $HOME/.vim/settings.vim
source $HOME/.vim/map.vim

