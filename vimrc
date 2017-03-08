" *** Geoffrey's vim configuration file based on 'Learn Vimscript The Hard Way' from Steve Losh***

echo "*** let's vim that file ***"

" set leader and local leader key
let mapleader = "-"
let localleader = "\\"

" enable mouse control
set mouse=a

" show line number
set number

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
"inoremap <Left> <nop>
inoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

augroup filetype_html
	autocmd!
	" Comment out current line for html files
	autocmd FileType html nnoremap <buffer> <localleader>c I<!--<Space><esc>$a<Space>--><esc>
	" Display a markup in a closed view
	autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

augroup filetype_javascript
	autocmd!
	" Comment out current line for javascript files
	autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
	" useful abbreviations for javascript files
	autocmd FileType javascript :iabbrev <buffer> iff if ()<Left>
augroup END

augroup filetype_c
	autocmd!
	" Comment out current line for c files
	autocmd FileType c nnoremap <buffer> <localleader>c I/*<Space><esc>$a<Space>*/<esc>
	" useful abbreviations for c files
	autocmd FileType c :iabbrev <buffer> rett return ();<Left><Left>
augroup END

augroup filetype_python
	autocmd!
	" Comment out current line for python files
	autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
	" useful abbreviations for python files
	autocmd FileType python :iabbrev <buffer> iff if:<Left>
augroup END
