command! -nargs=* -bang -complete=file JakselRun call jaksel#cmd#Run(<bang>0,<f-args>)
