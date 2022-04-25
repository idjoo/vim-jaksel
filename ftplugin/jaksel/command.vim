command! -nargs=* -bang -complete=file JakselRun call jaksel#cmd#Run(<bang>0,<f-args>)
command! -nargs=* -bang -complete=file JakselInstall call jaksel#cmd#Install(<bang>0,<f-args>)
