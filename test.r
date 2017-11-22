

## capture messages and errors to a file.
logfile <- file("/logdir/rscript.log", open="at")
sink(logfile,  append=TRUE)
sink(logfile, type="message", append=TRUE)

try(log("notanumber"))
print('hi')
cat('tl;','dr\n')
## reset message sink and close the file connection
sink(type="message")
sink()
close(logfile)

## Display the log file
print('log file:')

readLines("/logdir/rscript.log")
