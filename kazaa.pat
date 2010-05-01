# Kazaa - Peer to Peer filesharing
#
# This pattern has worked for some people and not for others.
# Please post to l7-filter-patterns@lists.sf.net as to whether it works 
# for you or not.  If you believe it could be improved please post your 
# suggestions to that list as well. You may subscribe to this list at 
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns

kazaa
# while this is a valid http request, this will be caught because
# the http pattern matches the response (and therefore the next packet)
get /.hash=.* http/1.1|user-agent: kazaa
