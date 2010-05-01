# DNS - Domain Name System (RFC 1035)
#
# Please post to l7-filter-developers@lists.sf.net as to whether this pattern 
# works for you or not.  If you believe it could be improved please post your 
# suggestions to that list as well. You may subscribe to this list at 
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

# While RFC 2181 says "Occasionally it is assumed that the Domain Name
# System serves only the purpose of mapping Internet host names to data,
# and mapping Internet addresses to host names.  This is not correct, the
# DNS is a general (if somewhat limited) hierarchical database, and can
# store almost any kind of data, for almost any purpose.", we will assume 
# just that, because that represents the vast majority of DNS traffic.

# The first thing that is matchable is QDCOUNT, the number of queries.
# Despite the fact that you can apparently ask for up to 65535
# things at a time, usually you only ask for one and I doubt you ever ask for
# zero.  Let's allow up to three, just in case (even though I can't find any 
# situation that generates more than one).

# Next comes the ANCOUNT, NSCOUNT, and ARCOUNT fields, which could be null
# or some smallish number, not matchable except by length (up to 6)

# The next matchable thing is the query address.  The first byte indicates
# the length of the first part of the address, which is limited to 63.
# Then we check for the presence of a top-level-domain at some later point.
# (is this horribly slow? yikes! See below.)
# http://www.icann.org/tlds/  
# http://www.iana.org/cctld/cctld-whois.htm

# next is the QTYPE field, which has valid values 1-16 (although this could
# probably be restricted further since many are rare).  It should follow
# immediately after the TLD (and some stripped-out nulls)

# next is QCLASS, which has valid values 1-4 and 255, except 2 is never used.
# I'm not sure if 3 and 4 are used, but I'll include them.  1 = Internet.
# 255 = any

# If we wanted to match queries and responses separately, there could be
# more specifics after this for the responses.

dns
[\x01-\x03].?.?.?.?.?.?[\x01-\x3F].*(aero|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|arpa|ac|ad|ae|af|ag|ai|al|am|an|ao|aq|ar|as|at|au|aw|az|ba|bb|bd|be|bf|bg|bh|bi|bj|bm|bn|bo|br|bs|bt|bv|bw|by|bz|ca|cc|cd|cf|cg|ch|ci|ck|cl|cm|cn|co|cr|cu|cv|cx|cy|cz|de|dj|dk|dm|do|dz|ec|ee|eg|eh|er|es|et|fi|fj|fk|fm|fo|fr|ga|gd|ge|gf|gg|gh|gi|gl|gm|gn|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|im|in|io|iq|ir|is|it|je|jm|jo|jp|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|mg|mh|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|mv|mw|mx|my|mz|na|nc|ne|nf|ng|ni|nl|no|np|nr|nu|nz|om|pa|pe|pf|pg|ph|pk|pl|pm|pn|pr|ps|pt|pw|py|qa|re|ro|ru|rw|sa|sb|sc|sd|se|sg|sh|si|sj|sk|sl|sm|sn|so|sr|st|sv|sy|sz|tc|td|tf|tg|th|tj|tk|tm|tn|to|tp|tr|tt|tv|tw|tz|ua|ug|uk|um|us|uy|uz|va|vc|ve|vg|vi|vn|vu|wf|ws|ye|yt|yu|za|zm|zw)[\x01-\x10][\x01\0x03\0x04\xFF]

# Use this if you think that searching thru the whole list of TLDs is too slow.
# (which I do)
# This just checks that there is at least a two letter string in there.
# [\x01-\x03].?.?.?.?.?.?[\x01-\x3F].*[a-z][a-z].*[\x01-\x10][\x01\0x03\0x04\xFF]

# http/1.1 200 ok..date: tue, 16 sep 2003 23:43:50 gmt..server: apache/2.0.45 (red hat linux)..last-modified: mon, 25
# aug 2003 00:56:23 gmt..etag: "14100f5-57d3b-497bdbc0"..accept-ranges: bytes..content-length: 359739..connection:
# close..content-type: application/x-rpm..........grip-3.0.7-0.dag.rh90........>..........,....0....@a.....
# 0415c8e1687e527015597877c5bbfc08cef7e96b.{......g...}.......?..?i^...r.k.y.........v...&...*.1...8.......56.
# c..0..fo.g.....>..........:4<?.4,.d..............................s.............................!.....%%.....a
# .....y.....w.....}......].....].....]....l].....]....]].....]....0].....]...........]....d.....l$.....$....s$.(...
# ..8.....9.....:..&..g...].h...].i. x].j. ...x. ...y. ...\.!.].]."|].^.&...b.(...d.)...e.)...f.)..

# Sep 16 18:43:32 dsl093-017-216 kernel: layer7: stream 0xb7: found match: dns

