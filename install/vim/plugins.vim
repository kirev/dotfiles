call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" utilities
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'scrooloose/syntastic' "syntastic
Plugin 'benmills/vimux'
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode
Plugin 'tpope/vim-vinegar' " Split windows and the project drawer go together like oil and vinegar
Plugin 'tpope/vim-surround' "surroundings: parentheses, brackets, quotes, XML tags, and more
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'} " powerline add support
Plugin 'sjl/gundo.vim' "visualize your Vim undo tree"
Plugin 'mileszs/ack.vim' "favorite search tool from Vim"
Plugin 'mustache/vim-mustache-handlebars' "mustache sintax"
" colorschemes
Plugin 'sjl/badwolf'
Plugin 'ryanoasis/vim-devicons'
Plugin 'trevordmiller/nova-vim'

Plugin 'dracula/vim'

" JavaScript plugins
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" HTML plugins
Plugin 'mattn/emmet-vim'

" GO plugin
Plugin 'fatih/vim-go', {'do': ':GoInstallBinaries'}
" Track the engine.
Plugin 'SirVer/ultisnips'

"ES2015 snippets
Plugin 'epilande/vim-es2015-snippets'

" React code snippets
Plugin 'epilande/vim-react-snippets'

" All of your Plugins must be added before the following line

call vundle#end()            " required
