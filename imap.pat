# IMAP - Internet Message Access Protocol (A common e-mail protocol)
#
# This pattern has been tested and is believed to work well.  If it does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-patterns@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns
# 
# This matches the IMAP welcome message or a noop command (which for 
# some unknown reason can happen at the start of a connection?)  
imap
(\* ok)|(a[0123456789]+ noop)

