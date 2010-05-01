http
# this intentionally catches the response from the server
# rather than the request so that other protocols which use
# http (like kazaa) can be caught based on specific http requests
# regardless of the ordering of the patterns...
http.*200.*content-length: [0123456789]+.*content-type:
