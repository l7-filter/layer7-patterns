#matches the IMAP welcome message or a noop command (which for 
#some unknown reason can happen at the start of a connection?)  
imap
(\* ok)|(a[0123456789]+ noop)

