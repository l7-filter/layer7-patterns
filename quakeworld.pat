# Quake World - A popular computer game.
#
# This pattern is untested and unconfirmed.
# Please post to l7-filter-developers@lists.sf.net as to whether it works
# for you or not.  If you believe it could be improved please post your
# suggestions to that list as well. You may subscribe to this list at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

quakeworld
# http://www.alumni.caltech.edu/~chamness/qwPackets.html
# First half matches client, second matches server.
# This is quite likely to be incomplete.
\xff\xffconnect "|fullserverinfo "\teamplay
