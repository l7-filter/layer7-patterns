# Ident - Identification Protocol - RFC 1413
# Usually runs on port 113
#
# This pattern is believed to work.  If it does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-developers@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

ident
# This is rather broad and could easily match things which aren't ident.
^[1-9][0-9]?[0-9]?[0-9]?[0-9]?[\x09-\x0d]*,[\x09-\x0d*[1-9][0-9]?[0-9]?[0-9]?[0-9]
# or we could just match the server response (2nd packet of 2, usually)
# ^[0-9]+ *, *[0-9]+ *: *USERID *:.*:
