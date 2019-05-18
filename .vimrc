" Automatic installation of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'junegunn/vim-plug'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'jooize/vim-colemak'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" seoul256 (dark):
colo seoul256

" Line numbering
set number

" Right margin
highlight ColorColumn ctermbg = 238
let &colorcolumn = join(range(121,999),",")

" Lightline
set noshowmode
let g:lightline = { 'colorscheme': 'seoul256' }

" Reload vim-colemak to remap any overidden keys
silent! source "$HOME/.vim/plugged/vim-colemak/plugin/colemak.vim"
