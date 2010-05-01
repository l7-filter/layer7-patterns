# Netbios name service
#
# This pattern has been tested and is believed to work well.  If it does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-patterns@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns
#
# name query
# \x01\x16 means name query
#
# registration NB
# (\x16 or )\x16 means registration
#
# release NB (merged with registration)
# 0\x16 means release

nbns
\x01\x10\x01|\)\x10\x01\x01|0\x10\x01



