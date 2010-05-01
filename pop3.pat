# POP3 -- Post Office Protocol version 3 (a popular e-mail protocol)
#
# This pattern has been tested and is believed to work well.  If it does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-patterns@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns

# matches the pop3 welcome message
pop3
\+ok pop3 .* server ready
