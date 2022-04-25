function! jaksel#cmd#Install(bang, ...) abort
  echo "Downloading jaksel..."
  let download = "curl https://api.github.com/repos/RioChndr/jaksel-language/releases/latest | jq '.[\"tarball_url\"]' | xargs -I {} curl -L {} -o jaksel-language.tar.gz"

  echo "Extracting jaksel..."
  let extract = "tar -xzf jaksel-language.tar.gz"
  let status = system(l:extract)

  echo "Installing jaksel..."
  let install = "cp RioChndr-jaksel-language-*/jaksel-interpreter.js ~/.local/bin/jaksel"
  let status = system(l:install)

  echo "Cleaning up..."
  let clean = "rm -rf RioChndr-jaksel-language-* jaksel-language.tar.gz"
  let status = system(l:clean)

  echo "Done! Installed in ~/.local/bin/jaksel"
endfunction

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
