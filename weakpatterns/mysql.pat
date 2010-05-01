# mySQL - Database 
# http://216.239.39.104/search?q=cache:Phier6mmAlAJ:public.logicacmg.com/~redferni/mysql/MySQL-Protocol.html+&hl=en&start=1&ie=UTF-8
# (sorry)
#
# This pattern is untested.  If it does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-developers@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

mysql
# matches versions 9 and 10 of the protocol (what other versions should be 
# matched?
# Assumes that the server version string is alphanumeric plus dashes and 
# underscores.
[\x09\x0a][0-9a-z\.\-_]*
\x01..?[a-z][a-z0-9]*
