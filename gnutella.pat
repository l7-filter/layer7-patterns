# Gnutella - Peer-to-peer file sharing - various clients use this protocol
# including Mactella, Gnucleus, Gnotella, LimeWire, BearShare, iMesh, 
# and WinMX.  Note that we have seperate patterns for some of these
# programs, should you have a reason to filter them individually.
# 
# This pattern has been verified with bearshare.  It may not work as well
# with other clients. Please report on how this pattern works for you at
# l7-filter-developers@lists.sf.net .  If you can improve on this pattern, 
# please also post to that list. You may subscribe at 
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

gnutella
gnutella connect/[\x09-\x0d -~]*x-ultrapeer|user-agent: bearshare|x-gnutella-content-urn
