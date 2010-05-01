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
# <ankit@elitecore.com> Added response status code 304 to the current pattern.
# Status-Line = HTTP-Version SP Status-Code SP Reason-Phrase CRLF (rfc 2616)
# As specified in rfc 2616 a status code is preceeded and followed by a
# space. 
(http.*(200 ok|302 |304 ).*(connection:|content-type:|content-length:))|(post .* http/)

# I think this should work, but I'm going to consult others and read more 
# before making it official:
#(http/[01]\.[019] .* [1-5][0-9][0-9] .*(connection:|content-type:|content-length:))|(post .* http/[01]\.[019])
