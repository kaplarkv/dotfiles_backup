nmap <leader>u :GundoToggle<CR>

" Remove search highlight
nmap <silent> <leader>/ :nohlsearch<CR>

" Change inside various enclosures with Alt-" and Alt-'
" The f makes it find the enclosure so you don't have
" to be standing inside it
nnoremap <A-'> f'ci'
nnoremap <A-"> f"ci"
nnoremap <A-(> f(ci(
nnoremap <A-)> f)ci)
nnoremap <A-[> f[ci[
nnoremap <A-]> f]ci]

" Now using the middle finger of either hand you can type
" underscores with Alt-k or Alt-d, and add Shift
" to type dashes
imap <silent> <A-k> _
imap <silent> <A-d> _
imap <silent> <A-K> -
imap <silent> <A-D> -

" Use Alt- numbers to pick the tab you want
map <silent> <A-1> :tabn 1<cr>
map <silent> <A-2> :tabn 2<cr>
map <silent> <A-3> :tabn 3<cr>
map <silent> <A-4> :tabn 4<cr>
map <silent> <A-5> :tabn 5<cr>
map <silent> <A-6> :tabn 6<cr>
map <silent> <A-7> :tabn 7<cr>
map <silent> <A-8> :tabn 8<cr>
map <silent> <A-9> :tabn 9<cr>

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" Resize windows with arrow keys
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-Left> <C-w><
nnoremap <C-Right> <C-w>>

" Make 0 go to the first character rather than the beginning
" of the line. When we're programming, we're almost always
" interested in working with text rather than empty space. If
" you want the traditional beginning of line, use ^
nnoremap 0 ^
nnoremap ^ 0

" Move between split windows by using the four directions H, L, K, J
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j

" Open file directory without changing working directory
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
