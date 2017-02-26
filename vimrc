echo "*** Geoffrey's vim configuration ***"

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
