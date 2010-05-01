# Ident - Identification Protocol - RFC 1413
# Usually runs on port 113
#
# This pattern is believed to work.  If it does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-patterns@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns

ident
# should limit to 5 digits, but that's a pain.  Assumes whitespace is all spaces.
# This is rather broad and could easily match things which aren't ident.
^[0123456789]+ *, *[0123456789]+
# or we could just match the server response (2nd packet of 2, usually)
# [0123456789]+ *, *[0123456789]+ *: *USERID *:.*:
# or if we had a decent regexp implementation
# [0-9]{1,5} *, *[0-9]{1,5}
