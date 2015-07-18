if exists('g:loaded_ctrlp_netrw') && g:loaded_ctrlp_netrw
  finish
endif
let g:loaded_ctrlp_netrw = 1

let s:netrw_var = {
\  'init':   'ctrlp#netrw#init()',
\  'exit':   'ctrlp#netrw#exit()',
\  'accept': 'ctrlp#netrw#accept',
\  'lname':  'netrw',
\  'sname':  'netrw',
\  'type':   'path',
\  'sort':   0,
\}

if exists('g:ctrlp_ext_vars') && !empty(g:ctrlp_ext_vars)
  let g:ctrlp_ext_vars = add(g:ctrlp_ext_vars, s:netrw_var)
else
  let g:ctrlp_ext_vars = [s:netrw_var]
endif

function! ctrlp#netrw#init()
    if exists('g:ctrlp_netrw_show_hidden') && g:ctrlp_netrw_show_hidden == 1
        let cmd = "find -type d"
    else
        let cmd = "find -type d \\( -path '*/.*' -prune -o -print \\) | sed -e s@./@@"
    endif
    let paths = reverse(split(system(cmd),"\n"))
    return paths
endfunction

function! ctrlp#netrw#accept(mode, str)
  call ctrlp#exit()
  exec "e " . a:str
  echo a:str
endfunction

function! ctrlp#netrw#exit()
endfunction

let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)
function! ctrlp#netrw#id()
  return s:id
endfunction

