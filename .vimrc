" *** Geoffrey's vim configuration file based on 'Learn Vimscript The Hard Way' from Steve Losh ***

echo "*** let's vim that file ***"

colo pablo

" set leader and local leader key
let mapleader = "-"
let localleader = "\\"

" enable mouse control
set mouse=a

" set paste
set paste

" enable syntax color
syntax on

" show line number
set number

" underline the cursor line
set cursorline

" make the 81st column turn red
set colorcolumn=81

" map - key to delete current line and paste it below
noremap - dd p

" map _ key to delete current line and paste it above
" (do not use it at the first or the last line of the file)
noremap _ dd <up> P

" in insert mode : convert the current word to uppercase
inoremap <c-u> <esc> viw U i

" in normal mode : convert the current word to uppercase
nnoremap <c-u> viw U

" open ~/.vimrc in a split window
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" source ~/.vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" surround the current word with "
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" surround the current word with '
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" in visual mode : surround current selection with '
vnoremap <leader>" <esc>`>a'<esc>`<i'<esc>`<lv`>l

" in normal mode : go to beginning of current line
nnoremap H 0

" in normal mode : go to the end of current line
nnoremap L $

" in insert mode : go to normal mode
inoremap jk <esc>

" (learning desability) desable esc key to go to normal mode
inoremap <esc> <nop>

" (learning desability) in normal and insert modes : desable arrow keys to move in the file
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

" Change how vim represents characters on the screen
set encoding=utf-8

" Set the encoding of files written
set fileencoding=utf-8

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4
" ts - show existing tab with 4 spaces width
" sw - when indenting with '>', use 4 spaces width
" sts - control <tab> and <bs> keys to match tabstop

" Control all other files
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set smartindent
filetype plugin indent on

" show line count in visual mode
set showcmd
" Allow backspace to delete indentation and inserted text
" i.e. how it works in most programs
set backspace=indent,eol,start
" indent  allow backspacing over autoindent
" eol     allow backspacing over line breaks (join lines)
" start   allow backspacing over the start of insert; CTRL-W and CTRL-U
"        stop once at the start of insert.


" go-vim plugin specific commands
" Also run `goimports` on your current file on every save
" Might be be slow on large codebases, if so, just comment it out
let g:go_fmt_command = "goimports"

" Status line types/signatures.
let g:go_auto_type_info = 1

"au filetype go inoremap <buffer> . .<C-x><C-o>

" If you want to disable gofmt on save
" let g:go_fmt_autosave = 0


" NERDTree plugin specific commands
:nnoremap <C-g> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree


" air-line plugin specific commands
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
