# IRC - Internet Relay Chat - RFC 1459
# Usually runs on port 6666 or 6667
#
# This pattern has been tested and is believe to work well.  If it does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-developers@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

irc
# I'd rather this were less inclusive...
^nick.*user.*:
