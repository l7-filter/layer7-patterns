# Kazaa - Peer to Peer filesharing
#
# This pattern has worked for some people and not for others.
# Please post to l7-filter-developers@lists.sf.net as to whether it works 
# for you or not.  If you believe it could be improved please post your 
# suggestions to that list as well. You may subscribe to this list at 
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

kazaa
# while this is a valid http request, this will be caught because
# the http pattern matches the response (and therefore the next packet)
get /.hash=[\x09-\x0d -~]* http/1.1|user-agent: kazaa

# the source of ipp2p suggests that "x-kazza-" may also help

# This is the pattern used by www.bandwidtharbitrator.com
# It is unverified.  Does it work for you?  Post to the l7-filter-developers
# kazaa|icw.*]p
