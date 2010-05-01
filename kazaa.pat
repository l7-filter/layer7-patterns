kazaa
#while this is a valid http request, this will be caught because
#the http pattern matches the response (and therefore the next packet)
get /.hash=.* http/1.1|user-agent: kazaa
