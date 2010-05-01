http
# this intentionally catches the response from the server
# rather than the request so that other protocols which use
# http (like kazaa) can be caught based on specific http requests
# regardless of the ordering of the patterns...
# also matches posts
(http.*(200 ok|302).*(connection:|content-type:|content-length:))|(post .* http/)

