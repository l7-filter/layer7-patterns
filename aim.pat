# AIM - AOL instant messenger (OSCAR and TOC)
#
# The original pattern commented out below has been tested and was believed 
# to work well.  The new pattern needs testing.  If it does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-patterns@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns

# WARNING: This pattern uses non-printable characters, be careful when 
# editing it!

aim
# See http://gridley.acns.carleton.edu/~straitm/final (and various other places)
# The first bit matches OSCAR signon and data commands, but not sure what
# ^C^K matches, but it works apparently.
# The next three bits match various parts of the TOC signon process.
# The third one is the magic number "*", then 0x01 for "signon", then up to four
# bytes ("up to" because l7-filter strips out nulls) which contain a sequence
# number (2 bytes) the data length (2 more) and 3 nulls (which don't count), 
# then 0x01 for the version number (not sure if there ever has been another 
# version)
# The fourth one is a command string, followed by some stuff, then the
# beginning of the "roasted" password
(\*(|).*)|(FLAPON)|(\*.?.?.?.?)|(toc_signon.*0x)

# pattern was just this:
\*(|).*
