function! jaksel#cmd#Run(bang, ...) abort
  " Command to run
  let cmd = ["jaksel"]

  " if args is empty then
  if a:0 == ""
    " Use current file
    let l:cmd = l:cmd + [expand("%:p")]
  else
    " Use args
    let l:cmd = l:cmd + a:0
  endif

  " Run command and print output
  let l:output = system(join(l:cmd, " "))
  if l:output != ""
      echo l:output
  endif
endfunction
