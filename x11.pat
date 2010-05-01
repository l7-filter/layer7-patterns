# X Windows Version 11 - Networked GUI system used in most Unices
# FIXME: where's the spec? I can't find it!
# Usually runs on port 6000 (6001 for the second server on a host, etc)
#
# This pattern has been tested.  If this pattern does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-patterns@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns

# WARNING: This pattern uses non-printable characters, be careful when 
# editing it!

x11
# 'l' = 0x6c = little-endian.  I don't know what the code for big-endian is!
# ".?" is for the unused byte that comes next.  If it's a null, it won't appear.
# ^K = 0x0b = protocol-major-version 11.
# For some reason, protocol-minor-version is set to 0, not 6, so can't match it.
# This pattern is WAY too general! 
^l.?
