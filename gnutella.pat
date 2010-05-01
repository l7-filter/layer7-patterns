# matches gnutella clients
#
# This pattern has been verified with bearshare.  It may not work as well
# with other clients. Please report on how this pattern works for you at
# l7-filter-patterns@lists.sf.net .  If you can improve on this pattern, 
# please also post to that list. You may subscribe at 
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns

gnutella
gnutella connect/.*x-ultrapeer|user-agent: bearshare|x-gnutella-content-urn
