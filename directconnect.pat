# Direct Connect - Peer to Peer filesharing http://www.neo-modus.com/
# Direct Connect "hubs" listen on port 411
# Protocol info: http://wza.digitalbrains.com/DC/doc/Introduction.html
#
# This pattern is lightly tested.  If this pattern does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-developers@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

directconnect
# (client-to-client handshake)|(client-to-hub login, hub speaking)|
# (client-to-hub login, client speaking)
\$mynick[\x09-\x0d -~]*\|\$lock[\x09-\x0d -~]*\||\$lock[\x09-\x0d -~]*pk=[\x09-\x0d -~]*\|\$hubname[\x09-\x0d -~]*\||\$key[\x09-\x0d -~]*\|\$validatenick[\x09-\x0d -~]*\|
