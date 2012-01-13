" Faster Navigation in Vim Help
" From: Packtpub Hacking Vim 7.2
" Date: 13/12/10 16:44:14 

" Follow a hyperlink
nmap <buffer> <CR> <C-]>

" Go back to the previous page
nmap <buffer> <BS> <C-T>

" Move throughout the Help Textfile's Hyperlinks
nmap <buffer> o /''[a-z]\{2,\}''<CR>
nmap <buffer> O ?''[a-z]\{2,\}''<CR>

nmap <buffer> s /\|\S\+\|<CR>
nmap <buffer> S ?\|\S\+\|<CR>
