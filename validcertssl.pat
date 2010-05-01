# validcertssl - Anything tunneled through SSL (i.e. HTTPS, IMAPS, SMTPS) 
# claiming to use a valid certificate from a well known certificate authority.
#
# This pattern is believed match only the above, but may not match all
# of it.
# Please post to l7-filter-patterns@lists.sf.net as to whether it works 
# for you or not.  If you believe it could be improved please post your 
# suggestions to that list as well. You may subscribe to this list at 
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns
#
# the certificate authority info is sent in quasi plain text, if it matches 
# a well known certificate authority then we will assume it is a 
# web/imaps/etc server other ssl may be good too, but it should fall under 
# a different rule

validcertssl
server-certs@thawte.com|equifax secure certificate authority|rsa data security, inc|verisign, inc|gte cybertrust root
