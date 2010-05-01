# Yahoo messenger - an instant messenger protocol
# 
# This pattern is untested. 
# Please post to l7-filter-patterns@lists.sf.net as to whether it works 
# for you or not.  If you believe it could be improved please post your 
# suggestions to that list as well. You may subscribe to this list at 
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns

# WARNING: this pattern uses non-printable characters.  Be careful when 
# editing it!

yahoo
# http://www.venkydude.com/articles/yahoo.htm says: 
# All Yahoo commands start with YMSG.
# The next 7 bytes contain command (packet?) length and version information
# which we won't currently try to match.
# W means "encryption challenge command"
# T means "login command"
# (there are others, i.e. 0x01 "coming online", 0x02 "going offline",
# 0x04 "changing status to available", 0x06 "user message", but W and T
# should appear in the first few packets.
# 0xC080 is the standard argument separator, it should appear not long
# after the "type of command" byte.

ymsg.......w.*À€

# can't use upper case, 'cause we call tolower on everything
#YMSG.......W.*À€
