call vundle#begin()

" let vundle manage vundle
Plugin 'gmarik/vundle'

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

" JavaScript plugins
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

call vundle#end()
