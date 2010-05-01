# eDonkey2000 - P2P filesharing (http://edonkey2000.com)
#
# Please post to l7-filter-developers@lists.sf.net as to whether this pattern 
# works for you or not.  If you believe it could be improved please post your 
# suggestions to that list as well. You may subscribe to this list at 
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

# This pattern was contributed by Matt Skidmore <fox@woozle.org>
# It is currently unclear whether this pattern matches the actual 
# (up|down)loads, or just the control streams.  It may also not match the 
# official eDonkey2000 client, as \xc5 means "eMule extentions", according
# to Ethereal. It definitely matches aMule control streams.

# client hello
# e3 <4 byte message length> 01
# server hello
# c5 <4 byte message length> 01
# client answer
# c5 <4 byte message length> 02
# server answer
# e3 <4 byte message length> 4c
# 
# The first byte of the length feild will probably never be null but the
# remaining bytes often are.

edonkey
\xe3[\x01-\xff].?.?.?\x01.*\xc5[\x01-\xff].?.?.?\x01.*\xc5[\x01-\xff].?.?.?\x02.*\xe3[\x01-\xff].?.?.?\x4c
