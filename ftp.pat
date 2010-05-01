# FTP - File Transfer Protocol (RFC 959)
# Usually runs on port 21
#
# This is somewhat tested.  If it does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-patterns@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns

# Matches the first two things a server should say.  Most servers say 
# something after 220, even though they don't have to, and it usually
# includes the string "ftp" (l7-filter is case insensitive at the moment).
# This includes proftpd, vsftpd, wuftpd, warftpd, pureftpd, Bulletproof 
# FTP Server, and whatever ftp.microsoft.com uses.  Just in case, the next 
# thing the server sends is a 331.  All the above servers also send 
# something including "password" after this code.
ftp
220.*ftp|331.*password

# when we can match across multiple packets, we can do this.  This will match
# servers that choose not to say either "ftp" or "password", if any such 
# servers exist.
# 200.*USER.*331

# this is no good.  Not all servers have []s or ()s after 220, nor
# is this required by the FTP RFC
# 220 .*ftp.*(\[.*\]|\(.*\))
