" Plugin ================================================================================
    call plug#begin('~/.config/nvim/plugged')

        " Ctrlp
        Plug 'kien/ctrlp.vim'

        " Nerdtree
        Plug 'scrooloose/nerdtree'

        " Theme
        Plug 'morhetz/gruvbox'

        " ReactSnippet
        Plug 'SirVer/ultisnips'
        Plug 'mlaursen/vim-react-snippets'

        " Emmet => type html div quick
        Plug 'mattn/emmet-vim'

        " Vim Styled component
        Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

        " Coc nvim
        Plug 'neoclide/coc.nvim',{'branch': 'release'}

        " Navigator between window
        Plug 'christoomey/vim-tmux-navigator'

        " Auto Close Tag
        Plug 'alvan/vim-closetag'

    call plug#end()
" END Plugin ============================================================================


" Plugin Setup ==========================================================================
    " Ctrlp
    "    let g:ctrlp_show_hidden=1
    "    let g:ctrlp_working_path_mode=0
    "    let g:ctrlp_max_height=30
    "    let g:ctrlp_arg_map=1
        map <leader>; :CtrlPBuffer<cr>
    "    map <leader>; :CtrlP<cr>

    " Nerdtree
        let g:netrw_liststyle=3
        let NERDTreeShowHidden=1
        map <leader>' :NERDTreeToggle<cr>

    " coc extensions
        let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-pairs']

    " Close tag
        " These are the file extensions where this plugin is enabled.
        let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

        " This will make the list of non-closing tags self-closing in the specified files.
        let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

        " These are the file types where this plugin is enabled.
        let g:closetag_filetypes = 'html,xhtml,phtml'

        " This will make the list of non-closing tags self-closing in the specified files.
        let g:closetag_xhtml_filetypes = 'xhtml,jsx'

        " This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
        let g:closetag_emptyTags_caseSensitive = 1

        " Disables auto-close if not in a "valid" region (based on filetype)
        let g:closetag_regions = {
            \ 'typescript.tsx': 'jsxRegion,tsxRegion',
            \ 'javascript.jsx': 'jsxRegion',
            \ 'typescriptreact': 'jsxRegion,tsxRegion',
            \ 'javascriptreact': 'jsxRegion',
            \ }

        " Shortcut for closing tags, default is '>'
        let g:closetag_shortcut = '>'

        " Add > at current position without closing the current tag, default is ''
        let g:closetag_close_shortcut = '<leader>>'

    " Emmet => type html div quick  
        let g:user_emmet_leader_key=','

" END Plugin Setup ======================================================================


" Vim Setup ============================================================================= 

    "Open terminal
    map <leader>tt :vs term://cmd<cr>
    map <leader>tj :sp term://cmd<cr>
    :tnoremap <Esc> <C-\><C-n>

    "Quit
    map <leader>q :q<cr>

    "Tabonly
    map <leader>to :tabonly<cr>

    "Save
    map <leader>w :w<cr>

    "Go to next error
    map <leader>e :cnext<cr>

    "Automatically start NERDTree with default derectory
    autocmd VimEnter * NERDTree \repos\blog

    "Go to tabprevious
    nnoremap gb :tabprevious<CR>

    "Set netrw
    "nmap <C-u> : netrw-ctr_l
    "let g:netrw_banner = 0
    "let g:netrw_liststyle = 3
    "let g:netrw_browse_split = 4
    "let g:netrw_altv = 1
    "let g:netrw_winsize = 50
    "let g:netrw_localrmdir='rm -r'
    "augroup ProjectDrawer
    "  autocmd!
    "  autocmd VimEnter * :Vexplore
    "augroup END

    "Set mouse
    set mouse=nv

    "Set working directory to the current file
    set autochdir

    "Language
    language en_US

    "Theme
    set background=dark
    colorscheme gruvbox

    " Switch syntax highlighting on, when the terminal has colors
    syntax on

    filetype indent on

    " Use vim, not vi api
    set nocompatible

    " No backup files
    set nobackup

    " No write backup
    set nowritebackup

    " No swap file
    set noswapfile

    " Command history
    set history=100

    " Always show cursor
    set ruler

    " Show incomplete commands
    set showcmd

    " Incremental searching (search as you type)
    set incsearch

    " Highlight search matches
    set hlsearch

    " Ignore case in search
    set smartcase

    " Make sure any searches /searchPhrase doesn't need the \c escape character
    set ignorecase

    " A buffer is marked as ‘hidden’ if it has unsaved changes, and it is not currently loaded in a window
    " if you try and quit Vim while there are hidden buffers, you will raise an error:
    " E162: No write since last change for buffer “a.txt”
    " set hidden

    " Turn word wrap off
    set nowrap

    " Allow backspace to delete end of line, indent and start of line characters
    set backspace=indent,eol,start

    " Convert tabs to spaces
    set expandtab

    " Set tab size in spaces (this is for manual indenting)
    set tabstop=4

    " The number of spaces inserted for a tab (used for auto indenting)
    set shiftwidth=4

    " Turn on line numbers
    set number

    " relative number
    set relativenumber

    " Highlight tailing whitespace
    set list listchars=tab:\ \ ,trail:·

    " Get rid of the delay when pressing O (for example)
    set timeout timeoutlen=1000 ttimeoutlen=100

    " Always show status bar
    " set laststatus=2

    " Set the status line to something useful
    " set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

    " Hide the toolbar
    set guioptions-=T

    " UTF encoding
    set encoding=utf-8

    " Autoload files that have changed outside of vim
    set autoread

    " Use system clipboard
    set clipboard^=unnamed,unnamedplus

    " Don't show intro
    set shortmess+=I

    "Scroll off
    set scrolloff=10

    " Better splits (new windows appear below and to the right)
    set splitbelow
    set splitright

    " Highlight the current line
    set cursorline

    " Ensure Vim doesn't beep at you every time you make a mistype
    set visualbell

    " Visual autocomplete for command menu (e.g. :e ~/path/to/file)
    set wildmenu
    set wildmode=longest:full,full

    " redraw only when we need to (i.e. don't redraw when executing a macro)
    set lazyredraw

    " highlight a matching [{()}] when cursor is placed on start/end character
    set showmatch

    inoremap <expr> <CR> InsertMapForEnter()
    function! InsertMapForEnter()
        if pumvisible()
            return "\<C-y>"
        elseif strcharpart(getline('.'),getpos('.')[2]-1,1) == '}'
            return "\<CR>\<Esc>O"
        elseif strcharpart(getline('.'),getpos('.')[2]-1,2) == '</'
            return "\<CR>\<Esc>O"
        else
            return "\<CR>"
        endif
    endfunction

" END Vim Setup =========================================================================
