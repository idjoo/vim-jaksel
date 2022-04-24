" Taken from vim-go
" Shelljoin returns a shell-safe string representation of arglist. The
" {special} argument of shellescape() may optionally be passed.
function! jaksel#util#Shelljoin(arglist, ...) abort
  try
    let ssl_save = &shellslash
    set noshellslash
    if a:0
      return join(map(copy(a:arglist), 'shellescape(v:val, ' . a:1 . ')'), ' ')
    endif

    return join(map(copy(a:arglist), 'shellescape(v:val)'), ' ')
  finally
    let &shellslash = ssl_save
  endtry
endfunction
