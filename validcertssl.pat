# the certificate authority info is sent in quasi plain text, if it matches a well
# known certificate authority then we will assume it is a web/imaps/etc server
# other ssl may be good too, but it should fall under a different rule
validcertssl
server-certs@thawte.com|equifax secure certificate authority|rsa data security, inc|verisign, inc|gte cybertrust root
