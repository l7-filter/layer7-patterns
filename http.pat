# HTTP - HyperText Transfer Protocol (RFC 2616)
# Usually runs on port 80
#
# This pattern has been tested and is believed to work well.  If it does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-developers@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers
#
# this intentionally catches the response from the server
# rather than the request so that other protocols which use
# http (like kazaa) can be caught based on specific http requests
# regardless of the ordering of the patterns...
# also matches posts

http
#this should match more codes (304, 404, etc)
(http.*(200 ok|302).*(connection:|content-type:|content-length:))|(post .* http/)

