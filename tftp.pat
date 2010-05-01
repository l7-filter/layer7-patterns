# TFTP - Trivial File Transfer Protocol - used for bootstrapping (RFC 1350)
# 
# This pattern is unconfirmed. 
# Please post to l7-filter-patterns@lists.sf.net as to whether it works 
# for you or not.  If you believe it could be improved please post your 
# suggestions to that list as well. You may subscribe to this list at 
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns
# 

tftp
# The first packet from the initiating host should either be a Read Request 
# or a Write Request.  In the other direction, it should be data packet with 
# block number one or an ACK with block number zero.  We only attempt to match
# the initiating host's packets, because the only identifying features of 
# the responses to them are two byte sequences (which isn't specific enough).
# (0x01|0x02) = Read Request or Write Request
# .* = the file name
# the rest = netascii|octet|mail, case insensitive

# WARNING: This pattern uses non-printable characters.  Be careful when 
# editing it!

(|).*([nN][eE][tT][aA][sS][cC][iI][iI]|[oO][cC][tT][eE][tT]|[mM][aA][iI][lL])
