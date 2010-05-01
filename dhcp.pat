# DHCP -- Dynamic Host Configuration Protocol (RFC 1541)
# Usually runs on ports 67 (server) and 68 (client)
#
# Also matches BOOTP (Bootstrap Protocol (RFC 951)) in the case that 
# the "vendor specific options" are used (these options were made standard
# for DHCP).
#
# This pattern is unconfirmed. 
# Please post to l7-filter-patterns@lists.sf.net as to whether it works 
# for you or not.  If you believe it could be improved please post your 
# suggestions to that list as well. You may subscribe to this list at 
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns
# 
# WARNING: this pattern uses non-printable characters.  Be careful when
# editing it!

dhcp
^(|)[- ].*c‚sc

# In hex, this reads: 
# 28 01 7c 02 29 5b 01 2d 20 5d 3f 06 2e 2a 63 82 73 63
# in psuedo-hex, it reads:
# (01|02)[01-20]?06.*63 82 73 63

# Let's break that down:
#
# (0x01|0x02) is for BOOTREQUEST or BOOTREPLY
# Is there a demand for doing these seperately?  The Packeteer does.
#
# [0x01-0x20] is for any of the hardware address types listed at
# (http://www.iana.org/assignments/arp-parameters) and hopefully faster 
# ethernets too (100, 1000 and 10000mb) as well (do they share the 10mb 
# number?).
#
# 0x06 for "hardware address length = 6 bytes".  Does anyone use other lengths
# these days?  If so, this pattern won't match it as it stands.
#
# .* covers the hops, xid, secs, flags, ciaddr, yiaddr, siaddr, giaddr, 
# chaddr, sname and file fields.  While this can't really be "any number
# of characters" long, it doesn't seem worth it to count.
# Can we make this more specific by restricting the number of hops or seconds?
#
# 63 82 53 63 is the "magic cookie" which begins the DHCP options field.
# 53 becomes 73 because we call tolower() on all bytes in each packet
